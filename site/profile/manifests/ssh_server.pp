class profile::ssh_server {
      package {'openssh-server':
                ensure => present,
      }
      service { 'sshd':
                ensure => 'running',
                enable => 'true',
      }
      ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDEDwV0Mn6h/7bb155hA6AOPCDct8xDl5BdEINjbdv8IOaFyd4lrQJjxp/Ma4QEYLuXHmwlvjhej8w3lepImz7wr+syV6yMRWMu8yImR7Nlp1YFOfRqknyplg1ETDrWuyfhRtSkX2BoXcFeEmKU/7nYkHLBsjUWT9PZ1nD3PtTD4DDo8rUdibp+CMH1XZ5+c02XBoJPdA4+zE2mGfqsiVDdRGF2/BAmJiRCxiY2GAg4mw5dIxbUWS0766ulUG5Bcct22JeYXKMjwNCmYGCehDWhc3k85XnYOdW3mxAlgmfTBM8UJoYmYH6HbSOnFvLMO7+SbHTGMhAj7vTiPbmK2Knj root@master.puppet.vm',
      }
}
