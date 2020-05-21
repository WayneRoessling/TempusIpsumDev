import { authRoles } from 'app/auth';
import i18next from 'i18next';
import ar from './navigation-i18n/ar';
import en from './navigation-i18n/en';
import tr from './navigation-i18n/tr';

i18next.addResourceBundle('en', 'navigation', en);
i18next.addResourceBundle('tr', 'navigation', tr);
i18next.addResourceBundle('ar', 'navigation', ar);

const navigationConfig = [
	{
		id: 'applications',
		title: 'My Studies',
		type: 'group',
		icon: 'apps',
		children: [
			{
				id: 'academy',
				title: 'My Training',
				type: 'item',
				icon: 'school',
				url: '/apps/academy'
			},
			{
				id: 'calendar',
				title: 'Training Calendar',
				type: 'item',
				icon: 'today',
				url: '/apps/calendar'
			},
			{
				id: 'todo',
				title: 'Goals',
				type: 'item',
				icon: 'check_box',
				url: '/apps/todo',
				badge: {
					title: 3,
					bg: 'rgb(255, 111, 0)',
					fg: '#FFFFFF'
				}
			},
			{
				id: 'e-commerce',
				title: 'Purchase Training',
				type: 'collapse',
				icon: 'shopping_cart',
				url: '/apps/e-commerce',
				children: [
					{
						id: 'e-commerce-products',
						title: 'Products',
						type: 'item',
						url: '/apps/e-commerce/products',
						exact: true
					},
					{
						id: 'e-commerce-product-detail',
						title: 'Product Detail',
						type: 'item',
						url: '/apps/e-commerce/products/1/a-walk-amongst-friends-canvas-print',
						exact: true
					},
					{
						id: 'e-commerce-new-product',
						title: 'New Product',
						type: 'item',
						url: '/apps/e-commerce/products/new',
						exact: true
					},
					{
						id: 'e-commerce-orders',
						title: 'Orders',
						type: 'item',
						url: '/apps/e-commerce/orders',
						exact: true
					},
					{
						id: 'e-commerce-order-detail',
						title: 'Order Detail',
						type: 'item',
						url: '/apps/e-commerce/orders/1',
						exact: true
					}
				]
			}
		]
	},
	{
		id: 'performance',
		title: 'My Performance',
		type: 'group',
		icon: 'pages',
		children: [
			{
				id: 'dashboards',
				title: 'Dashboards',
				type: 'collapse',
				icon: 'dashboard',
				children: [
					{
						id: 'analytics-dashboard',
						title: 'My Analytics',
						type: 'item',
						url: '/apps/dashboards/analytics'
					},
					{
						id: 'training-analytics',
						title: 'Training Analytics',
						type: 'item',
						url: '/apps/dashboards/project'
					},
					{
						id: 'tcs-performance',
						title: 'TCS Performance',
						type: 'item',
						url: '/apps/dashboards/project'
					}
				]
			},
			{
				id: 'scrumboard',
				title: 'Time Management',
				type: 'item',
				icon: 'assessment',
				url: '/apps/scrumboard'
			},
			{
				id: 'notes',
				title: 'Notes',
				type: 'item',
				icon: 'note',
				url: '/apps/notes'
			}
		]
	},
	{
		id: 'comms',
		title: 'Communicate',
		type: 'group',
		icon: 'pages',
		children: [
			{
				id: 'mail',
				title: 'Mail',
				type: 'item',
				icon: 'email',
				url: '/apps/mail',
				badge: {
					title: 25,
					bg: '#F44336',
					fg: '#FFFFFF'
				}
			},
			{
				id: 'chat',
				title: 'Chat',
				type: 'item',
				icon: 'chat',
				url: '/apps/chat',
				badge: {
					title: 13,
					bg: 'rgb(9, 210, 97)',
					fg: '#FFFFFF'
				}
			},
			{
				id: 'contacts',
				title: 'Contacts',
				type: 'item',
				icon: 'account_box',
				url: '/apps/contacts/all'
			},
			{
				id: 'profile',
				title: 'Profile',
				type: 'item',
				icon: 'person',
				url: '/pages/profile'
			}
		]
	},
	{
		id: 'help',
		title: 'Help',
		type: 'group',
		icon: 'pages',
		children: [
			{
				id: 'faq',
				title: 'Faq',
				type: 'item',
				icon: 'help',
				url: '/pages/faq'
			},
			{
				id: 'knowledge-base',
				title: 'Knowledge Base',
				type: 'item',
				icon: 'import_contacts',
				url: '/pages/knowledge-base'
			},
			{
				id: 'search',
				title: 'Search',
				type: 'collapse',
				icon: 'search',
				children: [
					{
						id: 'classic-search',
						title: 'Classic Search',
						type: 'item',
						url: '/pages/search/classic'
					},
					{
						id: 'modern-search',
						title: 'Modern Search',
						type: 'item',
						url: '/pages/search/modern'
					}
				]
			}
		]
	}
];

export default navigationConfig;
