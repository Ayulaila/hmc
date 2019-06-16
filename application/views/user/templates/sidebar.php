<?php $menu = $this->session->userdata('menu'); ?>
  <div class="sidebar" data-color="purple" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">
    <div class="logo">
      <a href="http://www.creative-tim.com" class="simple-text logo-normal">
        HMC
      </a>
    </div>
    <div class="sidebar-wrapper">
      <ul class="nav">
        <li class="nav-item active">
          <a class="nav-link" href="<?php echo base_url('user/dashboard');?>">
            <i class="material-icons">dashboard</i>
            <p>Dashboard</p>
          </a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="<?php echo base_url('user/users/profile');?>">
            <i class="material-icons">person</i>
            <p>User Profile</p>
          </a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="<?php echo base_url('user/tables');?>">
            <i class="material-icons">content_paste</i>
            <p>Table List</p>
          </a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="<?php echo base_url('user/notifications');?>">
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
