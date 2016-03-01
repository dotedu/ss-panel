{include file='user/main.tpl'}

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            节点列表
            <small>Node List</small>
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <!-- START PROGRESS BARS -->
        <div class="row">
            <div class="col-md-12">
                <div class="callout callout-warning">
                    <h4>注意!</h4>
                    <p>请勿在任何地方公开节点地址！</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="box box-info">
                    <div class="box-header">
                        <i class="fa fa-th-list"></i>

                        <h3 class="box-title">节点</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        {foreach $nodes as $node}
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="info-box">
                                        <a href="./node/{$node->id}"><span class="info-box-icon bg-aqua"><i class="fa fa-send-o"></i></span></a>

                                        <div class="info-box-content">
                                            <div class=row>
                                                <div class="col-sm-11">
                                                    <div class="info-box-number row">
                                                        <div class="col-sm-8">
                                                        <a href="./node/{$node->id}">{$node->name}</a> 
                                                        <sub>
                                                            {if $node->status == "正常"}
                                                        <span class="label label-success">{$node->status}</span>
                                                            {else}
                                                        <span class="label label-danger">{$node->status}</span>
                                                            {/if}
                                                        </sub>
                                                        </div>
                                                    </div>

                                                    <div class="info-box-text row" style="text-transform:none">
                                                        <div class="col-xs-4 col-sm-1">地址：</div>
                                                        <div class="col-xs-8 col-sm-5"><span
                                                                    class="label label-waring">{$node->server}</span>
                                                        </div>
                                                        <div class="col-xs-4 col-sm-1">端口：</div>
                                                        <div class="col-xs-8 col-sm-2"><span
                                                                    class="label label-waring">{$user->port}</span>
                                                        </div>
                                                        <div class="col-xs-4 col-sm-1">密码：</div>
                                                        <div class="col-xs-8 col-sm-2"><span
                                                                    class="label label-waring">{$user->passwd}</span>
                                                        </div>
                                                        <div class="col-xs-4 col-sm-1">加密：</div>
                                                        <div class="col-xs-8 col-sm-5">
                                                        <span class="label label-waring">
                                                            {if $node->custom_method == 1}
                                                                {$user->method}
                                                            {else}
                                                                {$node->method}
                                                            {/if}
                                                        </span>

                                                        </div>
                                                        <div class="col-xs-4 col-sm-1">协议：</div>
                                                        <div class="col-xs-8 col-sm-2"><span
                                                                    class="label label-waring">{$node->protocol}</span>
                                                        </div>
                                                        <div class="col-xs-4 col-sm-1">混淆：</div>
                                                        <div class="col-xs-8 col-sm-2"><span
                                                                    class="label label-waring">{$node->obfs}</span>
                                                        </div>
                                                        <div class="col-xs-4 col-sm-1">流量比例：</div>
                                                        <div class="col-xs-8 col-sm-5"><span
                                                                    class="label label-waring">{$node->traffic_rate}</span>
                                                        </div>
                                                        <div class="col-xs-4 col-sm-1">备注：</div>
                                                        <div class="col-xs-8 col-sm-5">
                                                            <div class="progress-description">{$node->info}</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                        <!-- /.info-box-content -->
                                    </div>
                                    <!-- /.info-box -->
                                </div>
                            </div>
                        {/foreach}
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col (left) -->
        </div>
        <!-- /.row --><!-- END PROGRESS BARS -->
    </section>
    <!-- /.content -->
</div><!-- /.content-wrapper -->


{include file='user/footer.tpl'}
