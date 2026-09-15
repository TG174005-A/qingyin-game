const CACHE='cms-v6';
self.addEventListener('install',e=>{
e.waitUntil(caches.open(CACHE));
});
