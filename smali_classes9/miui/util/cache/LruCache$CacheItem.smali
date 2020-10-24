.class Lmiui/util/cache/LruCache$CacheItem;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public cacheItem:Ljava/lang/Object;

.field public key:Ljava/lang/Object;

.field public size:I

.field public softCacheItem:Ljava/lang/ref/SoftReference;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/cache/LruCache$1;)V
    .locals 0

    invoke-direct {p0}, Lmiui/util/cache/LruCache$CacheItem;-><init>()V

    return-void
.end method
