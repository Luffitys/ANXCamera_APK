.class Landroid/app/ResourcesManager$1;
.super Ljava/lang/Object;
.source "ResourcesManager.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_App_ResourcesManager$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
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
.method public createResourcesImpl(Ljava/lang/Object;Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;
    .registers 4

    move-object v0, p1

    check-cast v0, Landroid/app/ResourcesManager;

    invoke-virtual {v0, p2}, Landroid/app/ResourcesManager;->originalCreateResourcesImpl(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    return-object v0
.end method
