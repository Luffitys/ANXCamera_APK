.class public Landroid/common/MiuiFrameworkFactory;
.super Ljava/lang/Object;
.source "MiuiFrameworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/common/MiuiFrameworkFactory$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiFrameworkFactory"

.field private static final mLock:Ljava/lang/Object;

.field private static obj:Landroid/common/MiuiFrameworkFactory$Factory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/common/MiuiFrameworkFactory;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Landroid/common/MiuiFrameworkFactory;->obj:Landroid/common/MiuiFrameworkFactory$Factory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getImplObject()Landroid/common/MiuiFrameworkFactory$Factory;
    .registers 5

    sget-object v0, Landroid/common/MiuiFrameworkFactory;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/common/MiuiFrameworkFactory;->obj:Landroid/common/MiuiFrameworkFactory$Factory;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_65

    if-nez v1, :cond_61

    :try_start_7
    const-string v1, "android.common.MiuiFrameworkFactoryImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/common/MiuiFrameworkFactory$Factory;

    sput-object v1, Landroid/common/MiuiFrameworkFactory;->obj:Landroid/common/MiuiFrameworkFactory$Factory;

    const-string v1, "MiuiFrameworkFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get AllImpl object = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/common/MiuiFrameworkFactory;->obj:Landroid/common/MiuiFrameworkFactory$Factory;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/common/MiuiFrameworkFactory;->obj:Landroid/common/MiuiFrameworkFactory$Factory;
    :try_end_2f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_2f} :catch_49
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2f} :catch_31
    .catchall {:try_start_7 .. :try_end_2f} :catchall_65

    :try_start_2f
    monitor-exit v0

    return-object v1

    :catch_31
    move-exception v1

    const-string v2, "MiuiFrameworkFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": reflection exception is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    :catch_49
    move-exception v1

    const-string v2, "MiuiFrameworkFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClassNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_61
    :goto_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_2f .. :try_end_62} :catchall_65

    sget-object v0, Landroid/common/MiuiFrameworkFactory;->obj:Landroid/common/MiuiFrameworkFactory$Factory;

    return-object v0

    :catchall_65
    move-exception v1

    :try_start_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v1
.end method
