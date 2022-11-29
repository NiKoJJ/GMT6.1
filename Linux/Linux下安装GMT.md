# linux下利用miniconda安装GMT

**1、清华源下载miniconda：**https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/

```shell
wget https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/Miniconda3-py39_4.9.2-Linux-x86_64.sh
```

**2、下载完成后，安装miniconda**

```shell
bash Miniconda3-py39_4.9.2-Linux-x86_64.sh
```

**3、更换miniconda镜像源**：

```python
# 清华镜像源：https://mirrors.tuna.tsinghua.edu.cn/help/anaconda/

# 在 /home/user 目录下 生成 .condarc文件
touch .condarc

# 编辑
vim .condarc

# 编辑完成，退出
Esc  :q  Enter
```

​	或者

​	使用命令也可以 ：

```python
# 添加镜像源
conda config -add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main

# 执行以下命令清除索引缓存，保证用的是镜像站提供的索引
conda clean -i

# 查看配置
conda config --show
conda config --show channels

# 移除镜像源 
conda config --remove channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main
```

**4、安装mamba**

```python
# 默认最新
conda install -c conda-forge  mamba

# 指定版本
conda install -c conda-forge mamba>='0.16'

# 安装包
mamba install numpy

# 查看版本信息
mamba --version
```

**5、创建新的环境**

```python
# 创建
conda create --name seisom-learn

# 激活环境
conda activate seisom-learn

# 取消激活
conda deactivate

# linux查看已经创建的虚拟环境
conda-env list

conda info --env

# 安装 Anaconda/Miniconda 后，打开终端默认会激活 base 环境。不经常使用可以通过如下命令取消此默认设置:
conda config --set auto_activate_base False

# 取消后重新激活base环境
conda activate base

# 重新激活默认环境设置
conda config --set auto_activate_base True

```

**6、安装gmt**

```python
# 安装gmt
conda install -c conda-forge gmt

# 查看版本信息
gmt --version

# 升级gmt
conda update gmt

# 卸载gmt
conda remove gmt

# 安装开发版本
conda install -c conda-forge/label/dev gmt
```

**7、第一个gmt脚本**

```python
# 进入终端后键入gmt
gmt

# 创建第一个bash脚本
gmt --new-script > myplot.sh

# vim编辑脚本
vim myplot.sh

# gedit编辑脚本
geidt myplot.sh


# 测试gmt脚本
gmt begin figurename
    gmt coast -Rg -JH15c -Gpurple -Baf -B+t"My First Plot"
gmt end show

# 退出并保存
Esc + :wq + Enter

# 运行脚本
bash myplot.sh
```

**8、测试结果图**

![image-20221118230848211](C:\Users\tellz\AppData\Roaming\Typora\typora-user-images\image-20221118230848211.png)
