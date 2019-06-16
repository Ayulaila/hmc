<?php foreach ($users as $key): ?>
<div class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-8">
        <div class="card">
          <div class="card-header card-header-primary">
            <h4 class="card-title">Edit Profile</h4>
            <p class="card-category">Edit your profile</p>
          </div>
          <div class="card-body">
            <form method="post" action="<?php echo base_url('admin/users/profile/edit/do_edit');?>">
              <div class="row">
                <div class="col-md-5">
                  <div class="form-group">
                    <label class="bmd-label-floating">Nama lengkap</label>
                    <input type="text" class="form-control" name="full_name" value="<?php echo $key->full_name;?>">
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                    <label class="bmd-label-floating">Username</label>
                    <input type="text" class="form-control" name="username" value="<?php echo $key->username;?>" id='username'>
                    <font color="" id='notif'></font>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <label class="bmd-label-floating">Email address</label>
                    <input type="email" class="form-control" name="email" value="<?php echo $key->email;?>">
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-12">
                  <div class="form-group">
                    <label class="bmd-label-floating">Address</label>
                    <input type="text" class="form-control" name="address" value="<?php echo $key->address;?>">
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-4">
                  <div class="form-group">
                    <label class="bmd-label-floating">Jenis kelamin</label>
                    <select class="form-control" data-style="btn btn-primary btn-round" name="jenis_kelamin">
                      <option value="">-Pilih-</option>
                      <option value="laki-laki">Laki-laki</option>
                      <option value="perempuan">Perempuan</option>
                    </select>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <label class="bmd-label-floating"></label>
                    <input type="date" class="form-control" name="tanggal_lahir" value="<?php echo $key->tanggal_lahir;?>">
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <label class="bmd-label-floating">Phone number</label>
                    <input type="text" class="form-control" name="phone_number" value="<?php echo $key->phone_number;?>">
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-4">
                  <div class="form-group">
                    <label class="bmd-label-floating">Password</label>
                    <input type="password" class="form-control" name="password">
                  </div>
                </div>
              </div>
              <button type="submit" class="btn btn-primary pull-right" id="btn-submit">Update Profile</button>
              <div class="clearfix"></div>
            </form>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="card card-profile">
          <div class="card-avatar">
            <a href="#pablo">
              <img class="img" src="<?php echo base_url();?>/assets/img/faces/hmc.jpg" />
            </a>
          </div>
          <div class="card-body">
            <h6 class="card-category text-gray">Company</h6>
            <h4 class="card-title"><?php echo $this->config->item('apps_name');?></h4>
            <p class="card-description">
            </p>
            <a href="#pablo" class="btn btn-primary btn-round">Follow</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
  $('#username').keyup(function(){
    $.ajax({
      url:'<?php echo base_url('admin/users/profile/cek_username')?>',
      type:'get',
      data:'username='+$('#username').val(),
      success:function(data){
        if(data=='0'){
          $('#notif').prop('color','red');
          $('#notif').text('username tidak dapat digunakan');
        }else {
          $('#notif').prop('color','green');
          $('#notif').text('username dapat digunakan');
        }
      },error:function(){
        alert('Something error!');
      }
    })
  });
</script>
<?php endforeach; ?>
