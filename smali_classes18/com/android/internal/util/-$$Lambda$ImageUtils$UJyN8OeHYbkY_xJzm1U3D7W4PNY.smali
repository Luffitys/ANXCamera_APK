.class public final synthetic Lcom/android/internal/util/-$$Lambda$ImageUtils$UJyN8OeHYbkY_xJzm1U3D7W4PNY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/content/ContentProviderClient;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/-$$Lambda$ImageUtils$UJyN8OeHYbkY_xJzm1U3D7W4PNY;->f$0:Landroid/content/ContentProviderClient;

    iput-object p2, p0, Lcom/android/internal/util/-$$Lambda$ImageUtils$UJyN8OeHYbkY_xJzm1U3D7W4PNY;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/internal/util/-$$Lambda$ImageUtils$UJyN8OeHYbkY_xJzm1U3D7W4PNY;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/util/-$$Lambda$ImageUtils$UJyN8OeHYbkY_xJzm1U3D7W4PNY;->f$0:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Lcom/android/internal/util/-$$Lambda$ImageUtils$UJyN8OeHYbkY_xJzm1U3D7W4PNY;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/internal/util/-$$Lambda$ImageUtils$UJyN8OeHYbkY_xJzm1U3D7W4PNY;->f$2:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/ImageUtils;->lambda$loadThumbnail$0(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method
