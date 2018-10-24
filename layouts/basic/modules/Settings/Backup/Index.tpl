{*<!-- {[The file is published on the basis of YetiForce Public License 3.0 that can be found in the following directory: licenses/LicenseEN.txt or yetiforce.com]} -->*}
{strip}
	<div class="tpl-Settings-Backup-Index">
		<div class="widget_header row">
			<div class="col-12">
				{include file=\App\Layout::getTemplatePath('BreadCrumbs.tpl', $QUALIFIED_MODULE)}
			</div>
		</div>
		<div class="contents">
			<h5>{\App\Language::translate('LBL_BACKUP_LIST',$QUALIFIED_MODULE)}</h5>
			<div class="listViewContentDiv ps ps--active-y">
				{if $SHOW_CONFIG_ALERT}
					<div class="alert alert-block alert-danger fade in show">
						<button type="button" class="close" data-dismiss="alert">×</button>
						<h4 class="alert-heading">{\App\Language::translate('ERR_CONFIG_ALERT_TITLE', $QUALIFIED_MODULE)}</h4>
						<p>{\App\Language::translate('ERR_CONFIG_ALERT_DESC', $QUALIFIED_MODULE)}</p>
					</div>
				{else}
					<table class="table tableBorderHeadBody listViewEntriesTable medium">
						{if {$STRUCTURE['manage']}}
							<tr class="listViewEntries">
								<td class="border bc-gray-lighter">
									<a href="{$STRUCTURE['manage']}">
										<i class="fas fa-level-up-alt"></i> [..]
									</a>
								</td>
							</tr>
						{/if}
						{foreach from=$STRUCTURE['catalogs'] item=$catalog}
							<tr class="listViewEntries">
								<td>
									<a href="{$catalog['directory']}" class="font-weight-bold">
										<span class="fas fa-folder"></span> {$catalog['name']}
									</a>
								</td>
							</tr>
						{/foreach}
					</table>
					<table class="table table-striped table-bordered dataTable">
						<tr class="c-tab--border-active listViewHeaders">
							<th class="p-2">
								{\App\Language::translate('LBL_FILE_NAME',$QUALIFIED_MODULE)}
							</th>
							<th class="p-2">
								{\App\Language::translate('LBL_FILE_DATE',$QUALIFIED_MODULE)}
							</th>
							<th class="p-2">
								{\App\Language::translate('LBL_FILE_SIZE',$QUALIFIED_MODULE)}
							</th>
							<th class="noWrap p-2">
								{\App\Language::translate('LBL_DOWNLOAD',$QUALIFIED_MODULE)}
							</th>
						</tr>
						{foreach from=$STRUCTURE['files'] item=$file}
							<tr class="listViewEntries"
								data-recordurl="index.php?module=Accounts&view=Detail&record=166">
								<td>{$file['name']}</td>
								<td>{$file['date']}</td>
								<td>{$file['size']}</td>
								<td class="u-w-1em">
									<a href="{$file['directory']}" class="btn btn-primary btn-sm">
										<span class="fas fa-download mr-1"></span> {\App\Language::translate('LBL_DOWNLOAD',$QUALIFIED_MODULE)}
									</a>
								</td>
							</tr>
						{/foreach}
					</table>
				{/if}
			</div>
		</div>
	</div>
{/strip}
