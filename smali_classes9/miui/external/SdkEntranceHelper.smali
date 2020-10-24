.class Lmiui/external/SdkEntranceHelper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/external/SdkConstants;


# static fields
.field private static final SDK_ENTRANCE_CLASS:Ljava/lang/String; = "miui.core.SdkManager"

.field private static final SDK_ENTRANCE_FALLBACK_CLASS:Ljava/lang/String; = "com.miui.internal.core.SdkManager"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSdkEntrance()Ljava/lang/Class;
    .locals 3

    const-string v0, "miuisdk"

    :try_start_0
    const-string v1, "miui.core.SdkManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v1, "com.miui.internal.core.SdkManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v2, "using legacy sdk"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_1
    move-exception v1

    const-string v2, "no sdk found"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1
.end method
