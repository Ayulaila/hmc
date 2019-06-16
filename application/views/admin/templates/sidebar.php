<?php $menu = $this->session->userdata('menu'); ?>
  <div class="sidebar" data-color="purple" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">
    <div class="logo">
      <a href="http://www.creative-tim.com" class="simple-text logo-normal">
        HMC
      </a>
    </div>
    <div class="sidebar-wrapper">
      <ul class="nav">
        <li class="nav-item <?php if($menu=='dashboard'){ echo 'active'; }?>">
          <a class="nav-link" href="<?php echo base_url('admin/dashboard');?>">
            <i class="material-icons">dashboard</i>
            <p>Dashboard</p>
          </a>
        </li>
        <li class="nav-item <?php if($menu=='users'){ echo 'active'; }?>">
          <a class="nav-link" href="<?php echo base_url('admin/users/create');?>">
            <i class="material-icons">person</i>
            <p>Add user</p>
          </a>
        </li>
        <li class="nav-item <?php if($menu=='tables'){ echo 'active'; }?>">
          <a class="nav-link" href="<?php echo base_url('admin/tables');?>">
            <i class="material-icons">content_paste</i>
            <p>Table List</p>
          </a>
        </li>
        <li class="nav-item <?php if($menu=='notifications'){ echo 'active'; }?>">
          <a class="nav-link" href="<?php echo base_url('admin/notifications');?>">
            <i class="material-icons">notifications</i>
            <p>Notifications</p>
          </a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="<?php echo base_url('auth/logout');?>">
            <i class="material-icons">logout</i>
            <p>Logout</p>
          </a>
        </li>
      </ul>
    </div>
  </div>
