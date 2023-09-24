#include <iostream>
#include <string>
#include <vector>
#include "hdf5.h"

// 创建一个HDF5文件，并且写入数据
void create_hdf5_file()
{
    // 创建HDF5文件
    hid_t file_id = H5Fcreate("example.h5", H5F_ACC_TRUNC, H5P_DEFAULT, H5P_DEFAULT);
    if (file_id < 0) {
        std::cerr << "Failed to create HDF5 file." << std::endl;
        return;
    }

    // 创建数据集
    std::vector<int> data = {1, 2, 3, 4, 5};
    hsize_t dims[] = {data.size()};
    hid_t dataspace_id = H5Screate_simple(1, dims, NULL);
    hid_t dataset_id = H5Dcreate2(file_id, "data", H5T_STD_I32LE, dataspace_id, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
    if (dataset_id < 0) {
        std::cerr << "Failed to create HDF5 dataset." << std::endl;
        H5Sclose(dataspace_id);
        H5Fclose(file_id);
        return;
    }

    // 写入数据
    herr_t status = H5Dwrite(dataset_id, H5T_NATIVE_INT, H5S_ALL, H5S_ALL, H5P_DEFAULT, data.data());
    if (status < 0) {
        std::cerr << "Failed to write data to HDF5 dataset." << std::endl;
        H5Dclose(dataset_id);
        H5Sclose(dataspace_id);
        H5Fclose(file_id);
        return;
    }

    // 关闭数据集、数据空间和文件
    H5Dclose(dataset_id);
    H5Sclose(dataspace_id);
    H5Fclose(file_id);

    std::cout << "HDF5 file created successfully." << std::endl;
}

// 读取HDF5文件中的数据
void read_hdf5_file()
{
    // 打开HDF5文件
    hid_t file_id = H5Fopen("example.h5", H5F_ACC_RDONLY, H5P_DEFAULT);
    if (file_id < 0) {
        std::cerr << "Failed to open HDF5 file." << std::endl;
        return;
    }

    // 打开数据集
    hid_t dataset_id = H5Dopen2(file_id, "data", H5P_DEFAULT);
    if (dataset_id < 0) {
        std::cerr << "Failed to open HDF5 dataset." << std::endl;
        H5Fclose(file_id);
        return;
    }

    // 获取数据集的数据类型和数据空间
    hid_t datatype_id = H5Dget_type(dataset_id);
    hid_t dataspace_id = H5Dget_space(dataset_id);

    // 获取数据集的维度
    hsize_t dims[1];
    H5Sget_simple_extent_dims(dataspace_id, dims, NULL);

    // 读取数据
    std::vector<int> data(dims[0]);
    herr_t status = H5Dread(dataset_id, H5T_NATIVE_INT, H5S_ALL, H5S_ALL, H5P_DEFAULT, data.data());
    if (status < 0) {
        std::cerr << "Failed to read data from HDF5 dataset." << std::endl;
        H5Sclose(dataspace_id);
        H5Tclose(datatype_id);
        H5Dclose(dataset_id);
        H5Fclose(file_id);
        return;
    }

    // 输出数据
    std::cout << "Data: ";
    for (int i = 0; i < data.size(); i++) {
        std::cout << data[i] << " ";
    }
    std::cout << std::endl;

    // 关闭数据集、数据空间、数据类型和文件
    H5Sclose(dataspace_id);
    H5Tclose(datatype_id);
    H5Dclose(dataset_id);
    H5Fclose(file_id);

    std::cout << "HDF5 file read successfully." << std::endl;
}

int main() {
    create_hdf5_file();
    read_hdf5_file();
    return 0;
}