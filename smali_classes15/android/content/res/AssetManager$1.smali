.class Landroid/content/res/AssetManager$1;
.super Ljava/lang/Object;
.source "AssetManager.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Content_Res_AssetManager$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/AssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAssetPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->originalAddAssetPath(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
