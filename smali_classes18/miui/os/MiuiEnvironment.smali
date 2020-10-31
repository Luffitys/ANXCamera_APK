.class public Lmiui/os/MiuiEnvironment;
.super Ljava/lang/Object;
.source "MiuiEnvironment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLegacyExternalStorageDirectory()Ljava/io/File;
    .registers 1

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
