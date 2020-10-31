.class public Lmiui/app/ConnectivityManagerReflector;
.super Ljava/lang/Object;
.source "ConnectivityManagerReflector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiManagerReflector"

.field public static final TETHERING_WIFI:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWifiStaSapConcurrency(Landroid/net/wifi/WifiManager;)Z
    .registers 5

    const-class v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getWifiStaSapConcurrency"

    invoke-static {p0, v3, v0, v2}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_18

    :cond_e
    invoke-virtual {v0}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_18
    return v1
.end method

.method public static startTethering(Landroid/net/ConnectivityManager;IZ)Z
    .registers 14

    const-string v0, "WifiManagerReflector"

    const/4 v1, 0x0

    const-class v2, Landroid/net/ConnectivityManager;

    const/4 v3, 0x3

    :try_start_6
    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "android.net.ConnectivityManager$OnStartTetheringCallback"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-string v5, "startTethering"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v9, Lmiui/app/ConnectivityManagerReflector$1;

    invoke-direct {v9}, Lmiui/app/ConnectivityManagerReflector$1;-><init>()V

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v7

    aput-object v9, v3, v8

    invoke-virtual {v5, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_3c} :catch_5a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_3c} :catch_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_3c} :catch_4c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_3c} :catch_45
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3c} :catch_3e

    const/4 v1, 0x1

    :goto_3d
    goto :goto_61

    :catch_3e
    move-exception v3

    const-string v4, "Exception"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_61

    :catch_45
    move-exception v3

    const-string v4, "InvocationTargetException"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    :catch_4c
    move-exception v3

    const-string v4, "IllegalAccessException"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    :catch_53
    move-exception v3

    const-string v4, "NoSuchMethodException"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    :catch_5a
    move-exception v3

    const-string v4, "ClassNotFoundException"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    :goto_61
    return v1
.end method

.method public static stopTethering(Landroid/net/ConnectivityManager;I)Z
    .registers 10

    const-string v0, "WifiManagerReflector"

    const/4 v1, 0x0

    const-class v2, Landroid/net/ConnectivityManager;

    :try_start_5
    const-string v3, "stopTethering"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_21} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_21} :catch_31
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_21} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_21} :catch_23

    const/4 v1, 0x1

    :goto_22
    goto :goto_3f

    :catch_23
    move-exception v3

    const-string v4, "Exception"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f

    :catch_2a
    move-exception v3

    const-string v4, "InvocationTargetException"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    :catch_31
    move-exception v3

    const-string v4, "IllegalAccessException"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    :catch_38
    move-exception v3

    const-string v4, "NoSuchMethodException"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    :goto_3f
    return v1
.end method
