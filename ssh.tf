resource "ibmcloud_infra_ssh_key" "ssh_key" {
  label = "interconnect-2017"
  notes = "interconnect-2017"
  # Public key, so this is completely safe
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDQEXzbz7uCQWfbWycU97ucC+Ka4yzwBebVbx5XuABCGybKzEjVcn2oYGWUOvxxckbg+bku6KyBfR8Aq4Ajz1ygeXl+1fuqaNVgj0BJKc9jzMdfYi53/gJzq7hypIQUcxdxu/UJiC79E7SEKpZ8DVETC4IqFe5mHVgeEyvXcXX8Xjb6xs1mCkNTAIfTc0UtZlGnKJZu3bEDvAw1/kqfpdDEuKVSqsEkjzF3cKNOATa2MRmU8djv/kS8rUhsuBKLqwAb4Brz3bo7hQtXlC8+kGuSMaKdC/Nds83hk5aX+wgGawGihlQhDRwJRgpBDAZSzT5ZIJ2Fz1BudXQnZ6tcps99 chris.kelner@weather.com"
}
