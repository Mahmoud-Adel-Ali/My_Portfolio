'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "232073512bbd557171892d2594c098ae",
"assets/AssetManifest.bin.json": "fee56798c4fc929aa80a4b92dbb44a43",
"assets/AssetManifest.json": "fd320624a3cc590fc89ef80298c3bc2a",
"assets/assets/fonts/BebasNeue-Regular.ttf": "b2b293064f557c41411aac04d6f6710d",
"assets/assets/fonts/Inter_18pt-Regular.ttf": "37dcabff629c3690303739be2e0b3524",
"assets/assets/fonts/Manrope-Regular.ttf": "f8105661cf5923464f0db8290746d2f9",
"assets/assets/icons/bloc.svg": "0ee535f1ecd304f783aa6ed0d7ac2bae",
"assets/assets/icons/clean_arch.svg": "ba04a6eb1036e2a1cfbf7c4b7dd3d1b4",
"assets/assets/icons/clean_code.svg": "817bc9df97a5a25608ee2cbf29cea560",
"assets/assets/icons/dart.svg": "5e7e6dbeb6c4f4edcc5e4dd9387b538b",
"assets/assets/icons/debugging.svg": "9dc7baef390b9424699694572e4d7eaf",
"assets/assets/icons/design_patterns.svg": "46342b49bab71c32f13bd84c24e3c56a",
"assets/assets/icons/facebook.svg": "0d1977f7fe29c6eccef16fc0f1629567",
"assets/assets/icons/figma.svg": "ffb18da568f1b288597339b0261a5e21",
"assets/assets/icons/firebase.svg": "2d4582a2bf4d2184f953b9aa6809ff22",
"assets/assets/icons/flutter.svg": "7bf7cf9a9a1d383856d465abdf249f46",
"assets/assets/icons/git.svg": "0192560034c6b7970c926e75dff17fdf",
"assets/assets/icons/github.svg": "5fbf40add9294ff1eb58158f858dd937",
"assets/assets/icons/instagram.svg": "1940a2344ed00fbe9e43a94405555178",
"assets/assets/icons/linkedin.svg": "8f9878fbe24b2a8e45384d7d0cc2d1c8",
"assets/assets/icons/mvvm.svg": "6e7fd870bcd176e79cee56a2fbf437c9",
"assets/assets/icons/oop.svg": "8895d227dcb744749e391906739ba63b",
"assets/assets/icons/solid_principles.svg": "ae6ee77bfd5bfca387d6147bc5e6862c",
"assets/assets/icons/state_management.svg": "3bf46b130f2904f2a3ba249f71230de7",
"assets/assets/icons/testing.svg": "22c5155a4d1db8b5d12a6a57d764549b",
"assets/assets/icons/Vector.svg": "9285580a42603b9c317fbf12771c9c51",
"assets/assets/images/alQudrah.png": "57eb1e66c9aef1ab52ab65ba97fb0d3b",
"assets/assets/images/chat-app.png": "94209c93aba35c88783aa6fed233a012",
"assets/assets/images/creativa.png": "cce3ba292b1f0854a5da8f62a4502518",
"assets/assets/images/doc_link.png": "55214f9b13c46eff0058e858a95eeb44",
"assets/assets/images/instagram.png": "8bf115d51d38a2af408d8b2fea454fa8",
"assets/assets/images/mahmoud1.png": "31b294c21e9e6f93b55bc13f1e6dca61",
"assets/assets/images/mahmoud2.png": "a6b3d3f1dd8611cd9b9f57544d6666fa",
"assets/assets/images/nectar.png": "3c9eea9af67f9adc7f08093ade458b49",
"assets/assets/images/open_ai.png": "a9cec406be9ee7be6e887da1ce9176f8",
"assets/assets/images/payment_feature.png": "21b18ccb186fe5efc26f8a295a3dcdb3",
"assets/assets/images/pharm_assist.png": "0899897138ad8147733597907c0fe730",
"assets/assets/images/portfolio.png": "24502da6d019a0d7d3a33333560e898b",
"assets/assets/images/quick_mart.png": "6a1f5cf4616629f52485b00d88e2fd4b",
"assets/assets/images/responsive_dashboard.png": "272ac1305b3bc46dfe0f46cd91d88943",
"assets/assets/images/tic_tac_toe.png": "62dd5651e0e23509b867ccd328c530fd",
"assets/FontManifest.json": "c4a057568845e8c3b0ac08c470d377ff",
"assets/fonts/MaterialIcons-Regular.otf": "303608af73b90649e207715a3d6b2554",
"assets/NOTICES": "d2e9271e24d4a39037f1de43f90074db",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"flutter_bootstrap.js": "a88c0e03b971e78551dbb617f7ed3027",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "40543c9e890119b70c9dad04ba68f92b",
"/": "40543c9e890119b70c9dad04ba68f92b",
"main.dart.js": "3c1db943e233da172a01125bdd48528a",
"manifest.json": "d8fe34f7ae4c072a77b924e01dac8a50",
"version.json": "9b818ca9511483c901bed1545384376c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
