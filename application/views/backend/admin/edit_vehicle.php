<?php
$vehicles =  $this->db->get_where('vehicle', array('vehicle_id' => $param2))->result_array();
foreach ($vehicles as $key => $vehicle) :
?>

    <div class="row">
        <div class="col-sm-12">
            <div class="panel panel-info">
                <div class="panel-heading"> <i class="fa fa-plus"></i>&nbsp;&nbsp;<?php echo get_phrase('update_vehicle'); ?></div>
                <div class="panel-wrapper collapse in" aria-expanded="true">
                    <div class="panel-body table-responsive">

                        <!----CREATION FORM STARTS---->

                        <?php echo form_open(base_url() . 'transportation/vehicle/update/' . $param2, array('class' => 'form-horizontal form-groups-bordered validate', 'target' => '_top')); ?>
                        <div class="form-group">
                            <label class="col-md-12" for="example-text"><?php echo get_phrase('name'); ?></label>
                            <div class="col-sm-12">
                                <input type="text" class="form-control" name="name" value="<?php echo $vehicle['name']; ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-12" for="example-text"><?php echo get_phrase('vehicle_number'); ?></label>
                            <div class="col-sm-12">
                                <input type="text" class="form-control" name="vehicle_number" value="<?php echo $vehicle['vehicle_number']; ?>">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-md-12" for="example-text"><?php echo get_phrase('vehicle_model'); ?></label>
                            <div class="col-sm-12">
                                <input type="text" class="form-control" name="vehicle_model" value="<?php echo $vehicle['vehicle_model']; ?>">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-md-12" for="example-text"><?php echo get_phrase('vehicle_quantity'); ?></label>
                            <div class="col-sm-12">
                                <input type="number" class="form-control" name="vehicle_quantity" value="<?php echo $vehicle['vehicle_quantity']; ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-12" for="example-text"><?php echo get_phrase('year_made'); ?></label>
                            <div class="col-sm-12">
                                <input type="text" class="form-control" name="year_made" value="<?php echo $vehicle['year_made']; ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-12" for="example-text"><?php echo get_phrase('driver_name'); ?></label>
                            <div class="col-sm-12">
                                <input type="text" class="form-control" name="driver_name" value="<?php echo $vehicle['driver_name']; ?>">
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-md-12" for="example-text"><?php echo get_phrase('driver_license'); ?></label>
                            <div class="col-sm-12">
                                <input type="text" class="form-control" name="driver_license" value="<?php echo $vehicle['driver_license']; ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-12" for="example-text"><?php echo get_phrase('driver_contact'); ?></label>
                            <div class="col-sm-12">
                                <textarea class="form-control" name="driver_contact"><?php echo $vehicle['driver_contact']; ?></textarea>
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-md-12" for="example-text"><?php echo get_phrase('description'); ?></label>
                            <div class="col-sm-12">
                                <textarea class="form-control" name="description"><?php echo $vehicle['description']; ?></textarea>
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-md-12" for="example-text"><?php echo get_phrase('status'); ?></label>
                            <div class="col-sm-12">

                                <select name="status" class="form-control">

                                    <option value="available" <?php if ($vehicle['status'] == 'available') echo 'selected'; ?>>Available</option>
                                    <option value="unavailable" <?php if ($vehicle['status'] == 'unavailable') echo 'selected'; ?>>Un Available</option>
                                </select>

                            </div>
                        </div>

                        <div class="form-group">
                            <button type="submit" class="btn btn-info btn-block btn-rounded btn-sm"><i class="fa fa-plus"></i>&nbsp;<?php echo get_phrase('save'); ?></button>
                        </div>

                        <?php echo form_close(); ?>
                    </div>
                </div>
            </div>
        </div>
        <!----CREATION FORM ENDS-->
    </div>
<?php endforeach; ?>