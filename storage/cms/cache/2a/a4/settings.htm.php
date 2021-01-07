<?php 
use \Responsiv\Currency\Models\Currency;
use \Spot\Shipment\Models\Settings;
use \Tiipiik\SmsSender\Models\Setting as SMS;
class Cms5ff6cc0bad5e8779773521_f2ccebad59ac0211cbc4cc2cffa481e7Class extends Cms\Classes\PageCode
{
public function onInit(){
    $setting =   \Spot\Shipment\Models\Settings::where('item','acme_demo_settings')->first();
    $this->Logo->bindModel('logo', $setting);
    $this->MobileLogo->bindModel('mobile_logo', $setting);
    $this->Favicon->bindModel('favicon', $setting);
}
public function onStart(){
    if(!Auth::getUser()->hasUserPermission(["setting"],'r')) {
        \Flash::error($this['theme_lang']['not_allowed']);
        return Redirect::to('dashboard');
    }
    if($this->param('page') == 'general' || !$this->param('page')){
        $this['currencies']         =   Currency::select('name','id','is_primary')->get();
        $this['primary_currency']   =   Currency::where('is_primary', 1)->first();
        $this['language']           =   Settings::get('language', true);
        $this['timezone_offset']    =   Settings::get('timezone_offset', true);
        $this['dateformat']         =   Settings::get('dateformat', true);
    }elseif($this->param('page') == 'company'){
        $this['company']            =   Settings::get('company', true);
    }elseif($this->param('page') == 'fees'){
        $this['taxes']              =   Settings::get('taxes', true);
        $this['fees']               =   Settings::get('fees', true);
        $this['primary_currency']   =   Currency::where('is_primary', 1)->first();
    }elseif($this->param('page') == 'invoice'){
        $this['tracking']           =   Settings::get('tracking', true);
        $this['deliverytimes']      =   \Spot\Shipment\Models\DeliveryTime::select('id','name')->get();
        $this['statuses']           =   \Spot\Shipment\Models\Status::select('id','name')->get();
        $this['invoice']            =   Settings::get('invoice', true);
    }elseif($this->param('page') == 'sms'){
        $this->page->settings_breadcrumb       =   'components';
                $sms =  array(
                    'enable'  =>  SMS::get('enable'),
                    'from'  =>  SMS::get('from'),
                    'gateway'  =>  SMS::get('gateway'),
                    'clickatell_api_id'  =>  SMS::get('clickatell_api_id'),
                );

        $this['sms']                =   $sms;
    }elseif($this->param('page') == 'notifications'){
        $this->page->settings_breadcrumb       =   'components';
        $this['notifications']      =   Settings::get('notifications', true);
        $this['departments']        =   \RainLab\User\Models\UserGroup::get();
        $this['employees']          =   \RainLab\User\Models\User::where('role_id', '!=', 5)->get();
    }elseif($this->param('page') == 'google'){
        $this->page->settings_breadcrumb       =   'components';
        $this['google']             =   Settings::get('google', true);
    }elseif($this->param('page') == 'departments'){
        if(!Auth::getUser()->hasUserPermission(["departments"],'r')) {
            \Flash::error($this['theme_lang']['not_allowed']);
            return Redirect::to('dashboard/settings');
        }
        $this->page->settings_breadcrumb       =   'employees';
        $this->page->listing        = true;
        if(Auth::getUser()->hasUserPermission(["departments"],'c')){
            $this->page->actions   = array(
                'add'   =>  url('dashboard/settings/departments/create')
            );
        }
    }elseif($this->param('page') == 'branches'){
        if(!Auth::getUser()->hasUserPermission(["branches"],'r')) {
            \Flash::error($this['theme_lang']['not_allowed']);
            return Redirect::to('dashboard/settings');
        }
        $this->page->settings_breadcrumb       =   'definitions';
        $this->page->listing        = true;
        if(Auth::getUser()->hasUserPermission(["branches"],'c')){
            $this->page->actions   = array(
                'add'   =>  url('dashboard/settings/branches/create')
            );
        }
    }elseif($this->param('page') == 'cars'){
        if(!Auth::getUser()->hasUserPermission(["cars"],'r')) {
            \Flash::error($this['theme_lang']['not_allowed']);
            return Redirect::to('dashboard/settings');
        }
        $this->page->settings_breadcrumb       =   'definitions';
        $this->page->listing        = true;
        if(Auth::getUser()->hasUserPermission(["cars"],'c')){
            $this->page->actions   = array(
                'add'   =>  url('dashboard/settings/cars/create')
            );
        }
    }elseif($this->param('page') == 'categories'){
        if(!Auth::getUser()->hasUserPermission(["category"],'r')) {
            \Flash::error($this['theme_lang']['not_allowed']);
            return Redirect::to('dashboard/settings');
        }
        $this->page->settings_breadcrumb       =   'definitions';
        $this->page->listing        = true;
        if(Auth::getUser()->hasUserPermission(["category"],'c')){
            $this->page->actions   = array(
                'add'   =>  url('dashboard/settings/categories/create')
            );
        }
    }elseif($this->param('page') == 'couriers'){
        if(!Auth::getUser()->hasUserPermission(["couriers"],'r')) {
            \Flash::error($this['theme_lang']['not_allowed']);
            return Redirect::to('dashboard/settings');
        }
        $this->page->settings_breadcrumb       =   'definitions';
        $this->page->listing        = true;
        if(Auth::getUser()->hasUserPermission(["couriers"],'c')){
            $this->page->actions   = array(
                'add'   =>  url('dashboard/settings/couriers/create')
            );
        }
    }elseif($this->param('page') == 'deliverytimes'){
        if(!Auth::getUser()->hasUserPermission(["deliverytimes"],'r')) {
            \Flash::error($this['theme_lang']['not_allowed']);
            return Redirect::to('dashboard/settings');
        }
        $this->page->settings_breadcrumb       =   'definitions';
        $this->page->listing        = true;
        if(Auth::getUser()->hasUserPermission(["deliverytimes"],'c')){
            $this->page->actions   = array(
                'add'   =>  url('dashboard/settings/deliverytimes/create')
            );
        }
    }elseif($this->param('page') == 'shipping'){
        if(!Auth::getUser()->hasUserPermission(["shipping"],'r')) {
            \Flash::error($this['theme_lang']['not_allowed']);
            return Redirect::to('dashboard/settings');
        }
        $this->page->settings_breadcrumb       =   'definitions';
        $this->page->listing        = true;
        if(Auth::getUser()->hasUserPermission(["shipping"],'c')){
            $this->page->actions   = array(
                'add'   =>  url('dashboard/settings/shipping/create')
            );
        }
    }elseif($this->param('page') == 'statuses'){
        if(!Auth::getUser()->hasUserPermission(["statuses"],'r')) {
            \Flash::error($this['theme_lang']['not_allowed']);
            return Redirect::to('dashboard/settings');
        }
        $this->page->settings_breadcrumb       =   'definitions';
        $this->page->listing        = true;
        if(Auth::getUser()->hasUserPermission(["statuses"],'c')){
            $this->page->actions   = array(
                'add'   =>  url('dashboard/settings/statuses/create')
            );
        }
    }elseif($this->param('page') == 'treasury'){
        if(!Auth::getUser()->hasUserPermission(["treasury"],'r')) {
            \Flash::error($this['theme_lang']['not_allowed']);
            return Redirect::to('dashboard/settings');
        }
        $this->page->settings_breadcrumb       =   'definitions';
        $this->page->listing        = true;
        if(Auth::getUser()->hasUserPermission(["treasury"],'c')){
            $this->page->actions   = array(
                'add'   =>  url('dashboard/settings/treasury/create')
            );
        }
    }elseif($this->param('page') == 'packaging'){
        if(!Auth::getUser()->hasUserPermission(["packaging"],'r')) {
            \Flash::error($this['theme_lang']['not_allowed']);
            return Redirect::to('dashboard/settings');
        }
        $this->page->settings_breadcrumb       =   'definitions';
        $this->page->listing        = true;
        if(Auth::getUser()->hasUserPermission(["packaging"],'c')){
            $this->page->actions   = array(
                'add'   =>  url('dashboard/settings/packaging/create')
            );
        }
    }elseif($this->param('page') == 'countries'){
        if(!Auth::getUser()->hasUserPermission(["countries"],'r')) {
            \Flash::error($this['theme_lang']['not_allowed']);
            return Redirect::to('dashboard/settings');
        }
        $this->page->settings_breadcrumb        =   'definitions';
        $this->page->child_of_page              =   'places';
        $this->page->listing                    = true;
        if(Auth::getUser()->hasUserPermission(["countries"],'c')){
            $this->page->actions   = array(
                'add'   =>  url('dashboard/settings/countries/create')
            );
        }
    }elseif($this->param('page') == 'states'){
        if(!Auth::getUser()->hasUserPermission(["states"],'r')) {
            \Flash::error($this['theme_lang']['not_allowed']);
            return Redirect::to('dashboard/settings');
        }
        $this->page->settings_breadcrumb        =   'definitions';
        $this->page->child_of_page              =   'places';
        $this->page->listing                    = true;
        if(Auth::getUser()->hasUserPermission(["states"],'c')){
            $this->page->actions   = array(
                'add'   =>  url('dashboard/settings/states/create')
            );
        }
    }elseif($this->param('page') == 'cities'){
        if(!Auth::getUser()->hasUserPermission(["cities"],'r')) {
            \Flash::error($this['theme_lang']['not_allowed']);
            return Redirect::to('dashboard/settings');
        }
        $this->page->settings_breadcrumb        =   'definitions';
        $this->page->child_of_page              =   'places';
        $this->page->listing                    = true;
        if(Auth::getUser()->hasUserPermission(["cities"],'c')){
            $this->page->actions   = array(
                'add'   =>  url('dashboard/settings/cities/create')
            );
        }
    }elseif($this->param('page') == 'areas'){
        if(!Auth::getUser()->hasUserPermission(["areas"],'r')) {
            \Flash::error($this['theme_lang']['not_allowed']);
            return Redirect::to('dashboard/settings');
        }
        $this->page->settings_breadcrumb        =   'definitions';
        $this->page->child_of_page              =   'places';
        $this->page->listing                    = true;
        if(Auth::getUser()->hasUserPermission(["areas"],'c')){
            $this->page->actions   = array(
                'add'   =>  url('dashboard/settings/areas/create')
            );
        }
    }elseif($this->param('page') == 'employees'){
        if(!Auth::getUser()->hasUserPermission(["employees"],'r')) {
            \Flash::error($this['theme_lang']['not_allowed']);
            return Redirect::to('dashboard/settings');
        }
        $this->page->settings_breadcrumb       =   'employees';
        $this->page->listing        = true;
        if(Auth::getUser()->hasUserPermission(["employees"],'c')){
            $this->page->actions   = array(
                'add'   =>  url('dashboard/settings/employees/create')
            );
        }
    }elseif($this->param('page') == 'languages'){
        if(!Auth::getUser()->hasUserPermission(["languages"],'r')) {
            \Flash::error($this['theme_lang']['not_allowed']);
            return Redirect::to('dashboard/settings');
        }
        $this->page->settings_breadcrumb       =   'languages';
        $this['languages']          =   RainLab\Translate\Models\Locale::get();

        $this->page->listing        = true;
        if(Auth::getUser()->hasUserPermission(["languages"],'c')){
            $this->page->actions   = array(
                'add'   =>  url('dashboard/settings/languages/create')
            );
        }
    }elseif($this->param('page') == 'currencies'){
        if(!Auth::getUser()->hasUserPermission(["currencies"],'r')) {
            \Flash::error($this['theme_lang']['not_allowed']);
            return Redirect::to('dashboard/settings');
        }
        $this->page->settings_breadcrumb       =   'languages';

        $this->page->listing        = true;
        if(Auth::getUser()->hasUserPermission(["currencies"],'c')){
            $this->page->actions   = array(
                'add'   =>  url('dashboard/settings/currencies/create')
            );
        }
    }elseif($this->param('page') == 'translate'){
        if(!Auth::getUser()->hasUserPermission(["languages"],'r')) {
            \Flash::error($this['theme_lang']['not_allowed']);
            return Redirect::to('dashboard/settings');
        }
        \System\Helpers\Cache::clear();
        $this->page->settings_breadcrumb       =   'languages';
        $this['languages']          =   RainLab\Translate\Models\Locale::get();
        $this['messages']           =   RainLab\Translate\Models\Message::all();
    }elseif($this->param('page') == 'backup'){
        if(!Auth::getUser()->hasUserPermission(["backups"],'r')) {
            \Flash::error($this['theme_lang']['not_allowed']);
            return Redirect::to('dashboard/settings');
        }
        $this->page->settings_breadcrumb       =   'backup';
        if(Auth::getUser()->hasUserPermission(["backups"],'c')) {
            $this->page->actions   = array(
                'buttons'   =>  array(
                    array(
                        'id'    =>  'database',
                        'title' =>  $this['theme_lang']['create_database_backup'],
                        'url'   =>  'javascript:;'
                    ),
                    array(
                        'id'    =>  'files',
                        'title' =>  $this['theme_lang']['create_files_backup'],
                        'url'   =>  'javascript:;'
                    ),
                    array(
                        'id'    =>  'whole',
                        'title' =>  $this['theme_lang']['create_system_backup'],
                        'url'   =>  'javascript:;'
                    ),
                )
            );
        }
    }
}
public function onBackup()
{
    \Flash::error($this['theme_lang']['not_allowed']);

    $data   = post();
    if($data['type'] == 'db'){
        $artisanArguments = ['--disable-notifications' => true, '--only-db' => true];
    }elseif($data['type'] == 'files'){
        $artisanArguments = ['--disable-notifications' => true, '--only-files' => true];
    }else{
        config([
            "backup.backup.source.files.include" => base_path(),
            "backup.backup.source.files.exclude" => [],

        ]);
        $artisanArguments = ['--disable-notifications' => true, '--filename' => "whole_project_backup.zip"];
    }
    October\Rain\Support\Facades\Config::set('filesystems.disks.local.root', storage_path(Panakour\Backup\Models\Settings::UPLOAD_PATH));
    \Artisan::call('backup:run', $artisanArguments);
    return $this['theme_lang']['created_successfully'];
}
public function onGetCurrency()
{
    $data       =   post();
    $currency   =   Currency::find($data['id']);
    return array('currency' => $currency);
}
public function onTranslate()
{
    $data                   =   post();
    $languages              =   \RainLab\Translate\Models\Locale::all();
    $message                =   \RainLab\Translate\Models\Message::find($data['id']);

    $message_data           =   array();
    $message_data['x']      =   $message->message_data['x'];
    foreach($languages as $lang){
        if(isset($message->message_data[$lang->code])){
            if($data['lang']    ==  $lang->code){
                $message_data[$lang->code]      =   htmlspecialchars($data['translate']);
            }else{
                $message_data[$lang->code]      =  htmlspecialchars($message->message_data[$lang->code]);
            }
        }else{
            if($data['lang']    ==  $lang->code){
                $message_data[$lang->code]      =   htmlspecialchars($data['translate']);
            }
        }
    }
    $message->message_data  =   $message_data;
    $message->save();

    \System\Helpers\Cache::clear();
    return true;
}
public function onEnd()
{
    if($this->param('page')){
        $this->page->title      =   ucfirst($this->param('page')) .' - '.$this->page->title;
    }else{
        $this->page->title      =   $this->page->title;
    }
}
public function onSave()
{
    $data = post();

    $settings                       =   Settings::instance();
    if($this->param('page') == 'general' || !$this->param('page')){
        $settings->language             =   htmlspecialchars($data['language']);
        $settings->timezone_offset      =   htmlspecialchars($data['timezone_offset']);
        $settings->dateformat           =   htmlspecialchars($data['dateformat']);

        $currency                                   =   Currency::find($data['currency']);
        $currency->is_primary                       =   1;
        $currency->place_symbol_before              =   ((isset($data['place_symbol_before'])) ? 1 : 0);
        $currency->with_space                       =   ((isset($data['with_space'])) ? 1 : 0);
        $currency->decimal_point                    =   htmlspecialchars($data['decimal_point']);
        $currency->thousand_separator               =   htmlspecialchars($data['thousand_separator']);
        $currency->initbiz_money_fraction_digits    =   htmlspecialchars($data['initbiz_money_fraction_digits']);
        $currency->save();

        $locale                 =   \RainLab\Translate\Models\Locale::where('code',$data['language'])->first();
        $locale->is_default     =   1;
        $locale->save();
    }elseif($this->param('page') == 'company'){
        $keywords       =   '';
        $n = 0;
        foreach(json_decode($data['company']['keywords']) as $keyword){
            $n++;
            $keywords   .=  $keyword->value;
            if($n < count(json_decode($data['company']['keywords']))){
                $keywords   .=  ',';
            }
        }
        $company    =   array(
                            'title'             =>  htmlspecialchars($data['company']['title']),
                            'charset'           =>  htmlspecialchars($data['company']['charset']),
                            'description'       =>  htmlspecialchars($data['company']['description']),
                            'keywords'          =>  $keywords,
                            'primary_email'     =>  htmlspecialchars($data['company']['primary_email']),
                            'tax_number'        =>  htmlspecialchars($data['company']['tax_number']),
                            'company_phone'     =>  htmlspecialchars($data['company']['company_phone']),
                            'company_phone_2'   =>  htmlspecialchars($data['company']['company_phone_2']),
                            'company_phone_3'   =>  htmlspecialchars($data['company']['company_phone_3']),
                            'facebook'          =>  htmlspecialchars($data['company']['facebook']),
                            'twitter'           =>  htmlspecialchars($data['company']['twitter']),
                            'instagram'         =>  htmlspecialchars($data['company']['instagram']),
                            'address'           =>  htmlspecialchars($data['address']),
                            'lat'               =>  htmlspecialchars($data['lat']),
                            'lng'               =>  htmlspecialchars($data['lng']),
                            'county'            =>  htmlspecialchars($data['sublocality']),
                            'city'              =>  htmlspecialchars($data['locality']),
                            'state'             =>  htmlspecialchars($data['administrative_area_level_1']),
                            'postal_code'       =>  htmlspecialchars($data['postal_code']),
                            'country'           =>  htmlspecialchars($data['country']),
                        );
        $settings->company              =   $company;
    }elseif($this->param('page') == 'fees'){
        $taxes    =   array(
                            'percent'             =>  htmlspecialchars($data['taxes']['percent']),
                            'insurance'           =>  htmlspecialchars($data['taxes']['insurance']),
                        );
        $settings->taxes              =   $taxes;
        $fees    =   array(
                            'delivery_cost'                     =>  htmlspecialchars($data['fees']['delivery_cost']),
                            'pickup_cost'                       =>  htmlspecialchars($data['fees']['pickup_cost']),
                            'delivery_cost_back_sender'         =>  htmlspecialchars($data['fees']['delivery_cost_back_sender']),
                            'delivery_cost_back_receiver'       =>  htmlspecialchars($data['fees']['delivery_cost_back_receiver']),
                        );
        $settings->fees              =   $fees;
    }elseif($this->param('page') == 'invoice'){
        $tracking    =   array(
                            'prefix_order'           =>  htmlspecialchars($data['tracking']['prefix_order']),
                            'numbers_order'          =>  htmlspecialchars($data['tracking']['numbers_order']),
                            //'prefix_container'       =>  htmlspecialchars($data['tracking']['prefix_container']),
                            //'numbers_container'      =>  htmlspecialchars($data['tracking']['numbers_container']),
                            //'prefix_consolidate'     =>  htmlspecialchars($data['tracking']['prefix_consolidate']),
                            //'numbers_consolidate'    =>  htmlspecialchars($data['tracking']['numbers_consolidate']),
                            'default_deliverytime'   =>  htmlspecialchars($data['tracking']['default_deliverytime']),
                            'default_status'         =>  htmlspecialchars($data['tracking']['default_status']),
                            'default_tracking_id'         =>  htmlspecialchars($data['tracking']['default_tracking_id']),
                        );
        $settings->tracking              =   $tracking;
        $invoice    =   array(
                            'terms'                 =>  htmlspecialchars($data['invoice']['terms']),
                            'signing_company'       =>  htmlspecialchars($data['invoice']['signing_company']),
                            'signing_customer'      =>  htmlspecialchars($data['invoice']['signing_customer']),
                        );
        $settings->invoice              =   $invoice;
    }elseif($this->param('page') == 'sms'){

        $sms = SMS::instance();
        if(isset($data['enable'])){
            $sms->enable = 1;
        }else{
            $sms->enable = 0;
        }
        $sms->from = '01008112686';
        $sms->gateway = htmlspecialchars($data['gateway']);
        $sms->clickatell_api_id = htmlspecialchars($data['clickatell_api_id']);
        $sms->save();

    }elseif($this->param('page') == 'notifications'){
        if(isset($data['live'])){
            $notifications    =   array(
                                'live'              =>  1,
                                'provider'          =>  $data['provider'],
                                'pusher'            =>  $data['pusher'],
                                'responsibility'    =>  $data['responsibility'],
                            );
        }else{
            $notifications    =   array(
                                'live'              =>  0,
                                'responsibility'    =>  $data['responsibility'],
                            );
        }
        $settings->notifications              =   $notifications;
    }elseif($this->param('page') == 'google'){
        $google    =   array(
                            'map'          =>  htmlspecialchars($data['map']),
                            'recaptcha'    =>  htmlspecialchars($data['recaptcha']),
                        );
        $settings->google              =   $google;
    }
    $settings->save();
    \System\Helpers\Cache::clear();

    \Flash::success($this['theme_lang']['updated_successfully']);
    return Redirect::to('dashboard/settings/'.$this->param('page'));
}
public function onDelete()
{
    $data = post();
    switch($data['type']){
        case 'languages':
            if(!Auth::getUser()->hasUserPermission(["languages"],'d')) {
                return Response::json(['error' => $this['theme_lang']['not_allowed']], 401);
            }

            if(null !== post('id')){
                if(is_array(post('id'))){
                    \RainLab\Translate\Models\Locale::whereIn('id',post('id'))->delete();
                }else{
                    \RainLab\Translate\Models\Locale::find($data['id'])->delete();
                }
                return Redirect::back();
            }
        break;
        case 'currencies':
            if(!Auth::getUser()->hasUserPermission(["currencies"],'d')) {
                return Response::json(['error' => $this['theme_lang']['not_allowed']], 401);
            }

            if(null !== post('id')){
                if(is_array(post('id'))){
                    \Responsiv\Currency\Models\Currency::whereIn('id',post('id'))->delete();
                }else{
                    \Responsiv\Currency\Models\Currency::find($data['id'])->delete();
                }
                return Redirect::back();
            }
        break;
        case 'departments':
            if(!Auth::getUser()->hasUserPermission(["departments"],'d')) {
                return Response::json(['error' => $this['theme_lang']['not_allowed']], 401);
            }

            if(null !== post('id')){
                if(is_array(post('id'))){
                    \RainLab\User\Models\UserGroup::whereIn('id',post('id'))->delete();
                }else{
                    \RainLab\User\Models\UserGroup::find($data['id'])->delete();
                }
                return Redirect::back();
            }
        break;
        case 'branches':
            if(!Auth::getUser()->hasUserPermission(["branches"],'d')) {
                return Response::json(['error' => $this['theme_lang']['not_allowed']], 401);
            }

            if(null !== post('id')){
                if(is_array(post('id'))){
                    \Spot\Shipment\Models\Office::whereIn('id',post('id'))->delete();
                }else{
                    \Spot\Shipment\Models\Office::find($data['id'])->delete();
                }
                return Redirect::back();
            }
        case 'cars':
            if(!Auth::getUser()->hasUserPermission(["cars"],'d')) {
                return Response::json(['error' => $this['theme_lang']['not_allowed']], 401);
            }

            if(null !== post('id')){
                if(is_array(post('id'))){
                    \Spot\Shipment\Models\Car::whereIn('id',post('id'))->delete();
                }else{
                    \Spot\Shipment\Models\Car::find($data['id'])->delete();
                }
                return Redirect::back();
            }
        case 'statuses':
            if(!Auth::getUser()->hasUserPermission(["statuses"],'d')) {
                return Response::json(['error' => $this['theme_lang']['not_allowed']], 401);
            }

            if(null !== post('id')){
                if(is_array(post('id'))){
                    \Spot\Shipment\Models\Status::whereIn('id',post('id'))->delete();
                }else{
                    \Spot\Shipment\Models\Status::find($data['id'])->delete();
                }
                return Redirect::back();
            }
        break;
        case 'treasury':
            if(!Auth::getUser()->hasUserPermission(["treasury"],'d')) {
                return Response::json(['error' => $this['theme_lang']['not_allowed']], 401);
            }

            if(null !== post('id')){
                if(is_array(post('id'))){
                    \Spot\Shipment\Models\Treasury::whereIn('id',post('id'))->delete();
                }else{
                    \Spot\Shipment\Models\Treasury::find($data['id'])->delete();
                }
                return Redirect::back();
            }
        break;
        case 'category':
            if(!Auth::getUser()->hasUserPermission(["category"],'d')) {
                return Response::json(['error' => $this['theme_lang']['not_allowed']], 401);
            }

            if(null !== post('id')){
                if(is_array(post('id'))){
                    \Spot\Shipment\Models\Category::whereIn('id',post('id'))->delete();
                }else{
                    \Spot\Shipment\Models\Category::find($data['id'])->delete();
                }
                return Redirect::back();
            }
        break;
        case 'shipping':
            if(!Auth::getUser()->hasUserPermission(["shipping"],'d')) {
                return Response::json(['error' => $this['theme_lang']['not_allowed']], 401);
            }

            if(null !== post('id')){
                if(is_array(post('id'))){
                    \Spot\Shipment\Models\Mode::whereIn('id',post('id'))->delete();
                }else{
                    \Spot\Shipment\Models\Mode::find($data['id'])->delete();
                }
                return Redirect::back();
            }
        break;
        case 'couriers':
            if(!Auth::getUser()->hasUserPermission(["couriers"],'d')) {
                return Response::json(['error' => $this['theme_lang']['not_allowed']], 401);
            }

            if(null !== post('id')){
                if(is_array(post('id'))){
                    \Spot\Shipment\Models\Courier::whereIn('id',post('id'))->delete();
                }else{
                    \Spot\Shipment\Models\Courier::find($data['id'])->delete();
                }
                return Redirect::back();
            }
        case 'deliverytimes':
            if(!Auth::getUser()->hasUserPermission(["deliverytimes"],'d')) {
                return Response::json(['error' => $this['theme_lang']['not_allowed']], 401);
            }

            if(null !== post('id')){
                if(is_array(post('id'))){
                    \Spot\Shipment\Models\DeliveryTime::whereIn('id',post('id'))->delete();
                }else{
                    \Spot\Shipment\Models\DeliveryTime::find($data['id'])->delete();
                }
                return Redirect::back();
            }
        break;
        case 'countries':
            if(!Auth::getUser()->hasUserPermission(["countries"],'d')) {
                return Response::json(['error' => $this['theme_lang']['not_allowed']], 401);
            }

            if(null !== post('id')){
                if(is_array(post('id'))){
                    \RainLab\Location\Models\Country::whereIn('id',post('id'))->delete();
                }else{
                    \RainLab\Location\Models\Country::find($data['id'])->delete();
                }
                return Redirect::back();
            }
        case 'states':
            if(!Auth::getUser()->hasUserPermission(["states"],'d')) {
                return Response::json(['error' => $this['theme_lang']['not_allowed']], 401);
            }

            if(null !== post('id')){
                if(is_array(post('id'))){
                    \RainLab\Location\Models\State::whereIn('id',post('id'))->delete();
                }else{
                    \RainLab\Location\Models\State::find($data['id'])->delete();
                }
                return Redirect::back();
            }
        case 'cities':
            if(!Auth::getUser()->hasUserPermission(["cities"],'d')) {
                return Response::json(['error' => $this['theme_lang']['not_allowed']], 401);
            }

            if(null !== post('id')){
                if(is_array(post('id'))){
                    \Spot\Shipment\Models\City::whereIn('id',post('id'))->delete();
                }else{
                    \Spot\Shipment\Models\City::find($data['id'])->delete();
                }
                return Redirect::back();
            }
        case 'areas':
            if(!Auth::getUser()->hasUserPermission(["areas"],'d')) {
                return Response::json(['error' => $this['theme_lang']['not_allowed']], 401);
            }

            if(null !== post('id')){
                if(is_array(post('id'))){
                    \Spot\Shipment\Models\Area::whereIn('id',post('id'))->delete();
                }else{
                    \Spot\Shipment\Models\Area::find($data['id'])->delete();
                }
                return Redirect::back();
            }
        break;
        case 'packaging':
            if(!Auth::getUser()->hasUserPermission(["packaging"],'d')) {
                return Response::json(['error' => $this['theme_lang']['not_allowed']], 401);
            }

            if(null !== post('id')){
                if(is_array(post('id'))){
                    \Spot\Shipment\Models\Packaging::whereIn('id',post('id'))->delete();
                }else{
                    \Spot\Shipment\Models\Packaging::find($data['id'])->delete();
                }
                return Redirect::back();
            }
        break;
        case 'fees':
            if(!Auth::getUser()->hasUserPermission(["fees"],'d')) {
                return Response::json(['error' => $this['theme_lang']['not_allowed']], 401);
            }

            if(null !== post('id')){
                if(is_array(post('id'))){
                    \Spot\Shipment\Models\Fees::whereIn('id',post('id'))->delete();
                }else{
                    \Spot\Shipment\Models\Fees::find($data['id'])->delete();
                }
                return Redirect::back();
            }
        break;
        case 'employees':
            if(!Auth::getUser()->hasUserPermission(["employees"],'d')) {
                return Response::json(['error' => $this['theme_lang']['not_allowed']], 401);
            }

            if(null !== post('id')){
                if(is_array(post('id'))){
                    \RainLab\User\Models\User::whereIn('id',post('id'))->delete();
                }else{
                    \RainLab\User\Models\User::find($data['id'])->delete();
                }
                return Redirect::back();
            }
        break;
        case 'backup':
            if(!Auth::getUser()->hasUserPermission(["backups"],'d')) {
                return Response::json(['error' => $this['theme_lang']['not_allowed']], 401);
            }

            if(null !== post('id')){
                if(is_array(post('id'))){
                    foreach(post('id') as $file){
                        echo $file;
                        unlink(storage_path('app/uploads/panakour-backup/'.$file));
                    }
                }else{
                    unlink(storage_path('app/uploads/panakour-backup/'.post('id')));
                }
                return Redirect::back();
            }
        break;
    }
}
}
