<?php /* Smarty version Smarty-3.1.7, created on 2021-01-21 15:35:20
         compiled from "/usr/CTH604_Nhom2_CRM/Source_Code/vtigercrm/includes/runtime/../../layouts/v7/modules/EmailTemplates/DefaultContentForTemplates.tpl" */ ?>
<?php /*%%SmartyHeaderCode:166908697260099f384ac825-38579101%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f894b31e2762c7ccbdc379cae65a8b55f88da14b' => 
    array (
      0 => '/usr/CTH604_Nhom2_CRM/Source_Code/vtigercrm/includes/runtime/../../layouts/v7/modules/EmailTemplates/DefaultContentForTemplates.tpl',
      1 => 1607830287,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '166908697260099f384ac825-38579101',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'COMPANY_MODEL' => 0,
    'TWITTER_URL' => 0,
    'FACEBOOK_URL' => 0,
    'WEBSITE_URL' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_60099f384b247',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_60099f384b247')) {function content_60099f384b247($_smarty_tpl) {?>

<?php $_smarty_tpl->tpl_vars["VIEW_IN_BROWSER_TAG"] = new Smarty_variable(EmailTemplates_Module_Model::$BROWSER_MERGE_TAG, null, 0);?>
<?php $_smarty_tpl->tpl_vars["WEBSITE_URL"] = new Smarty_variable($_smarty_tpl->tpl_vars['COMPANY_MODEL']->value->get('website'), null, 0);?>
<?php $_smarty_tpl->tpl_vars["FACEBOOK_URL"] = new Smarty_variable($_smarty_tpl->tpl_vars['COMPANY_MODEL']->value->get('facebook'), null, 0);?>
<?php $_smarty_tpl->tpl_vars["TWITTER_URL"] = new Smarty_variable($_smarty_tpl->tpl_vars['COMPANY_MODEL']->value->get('twitter'), null, 0);?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<title></title>
	</head>
	<body class="scayt-enabled">
		<div>
			<center>
				<table border="0" cellpadding="0" cellspacing="0" class="borderGrey" width="600px">
					<tbody>
						<tr style="height:50px;">
							<td colspan="6" style="border-top: 1px solid #ddd; font-family: Helvetica,Verdana,sans-serif"></td>
						</tr>
						<tr>
							<td colspan="6" style="font-family: Helvetica,Verdana,sans-serif;font-size: 11px;color: #666666;">
								<table border="0" cellpadding="4" cellspacing="0" width="100%">
									<tbody>
										<tr>
											<td colspan="2" id="social" valign="middle">
												<center>
													<div>&nbsp;<a href="<?php echo $_smarty_tpl->tpl_vars['TWITTER_URL']->value;?>
" target="_blank"> follow on Twitter</a> | <a href="<?php echo $_smarty_tpl->tpl_vars['FACEBOOK_URL']->value;?>
" target="_blank">follow on Facebook</a></div>
												</center>
											</td>
										</tr>
										<!--copy right data-->
										<tr>
											<td valign="top" width="350px">
												<center>
													<div><em>Copyright &copy; <?php echo date('Y');?>
 <?php if (!(empty($_smarty_tpl->tpl_vars['WEBSITE_URL']->value))){?><a href="<?php echo $_smarty_tpl->tpl_vars['WEBSITE_URL']->value;?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['WEBSITE_URL']->value;?>
</a><?php }else{ ?>your company.com<?php }?>, All rights reserved.</em></div>
												</center>
											</td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
					</tbody>
				</table>
			</center>
		</div>
	</body>
</html>
<?php }} ?>