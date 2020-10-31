.class public abstract Landroid/content/pm/PackageManager$DexModuleRegisterCallback;
.super Ljava/lang/Object;
.source "PackageManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DexModuleRegisterCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onDexModuleRegistered(Ljava/lang/String;ZLjava/lang/String;)V
.end method
