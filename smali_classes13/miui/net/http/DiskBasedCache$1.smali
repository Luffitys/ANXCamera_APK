.class Lmiui/net/http/DiskBasedCache$1;
.super Lmiui/util/SoftReferenceSingleton;
.source "DiskBasedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/net/http/DiskBasedCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/SoftReferenceSingleton<",
        "Lmiui/net/http/DiskBasedCache;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiui/util/SoftReferenceSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createInstance()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lmiui/net/http/DiskBasedCache$1;->createInstance()Lmiui/net/http/DiskBasedCache;

    move-result-object v0

    return-object v0
.end method

.method protected createInstance()Lmiui/net/http/DiskBasedCache;
    .registers 2

    new-instance v0, Lmiui/net/http/DiskBasedCache;

    invoke-direct {v0}, Lmiui/net/http/DiskBasedCache;-><init>()V

    invoke-virtual {v0}, Lmiui/net/http/DiskBasedCache;->initialize()V

    return-object v0
.end method
