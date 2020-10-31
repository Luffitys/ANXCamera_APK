.class public Landroid/miui/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# static fields
.field private static final EMULATED_EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

.field private static final EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

.field private static final SUPPORT_MULTI_USERS_EXTERNAL_STORAGE:Z

.field private static final TAG:Ljava/lang/String; = "Shell"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "shell_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    move-object v2, v0

    goto :goto_1b

    :cond_17
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1b
    sput-object v2, Landroid/miui/Shell;->EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    invoke-static {}, Landroid/miui/Shell;->getEmulatedStorageSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    move-object v1, v2

    goto :goto_2d

    :cond_29
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2d
    sput-object v1, Landroid/miui/Shell;->EMULATED_EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    sput-boolean v3, Landroid/miui/Shell;->SUPPORT_MULTI_USERS_EXTERNAL_STORAGE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final boostCpuPulse()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static chmod(Ljava/lang/String;I)Z
    .registers 3

    invoke-static {p0}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/miui/Shell;->nativeChmod(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static chmodRecursion(Ljava/lang/String;I)Z
    .registers 3

    invoke-static {p0}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/miui/Shell;->nativeChmod(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static chown(Ljava/lang/String;II)Z
    .registers 4

    invoke-static {p0}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/miui/Shell;->nativeChown(Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method public static chownRecursion(Ljava/lang/String;II)Z
    .registers 4

    invoke-static {p0}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/miui/Shell;->nativeChown(Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/miui/Shell;->nativeCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static getEmulatedStorageSource()Ljava/lang/String;
    .registers 3

    const-string v0, "EMULATED_STORAGE_SOURCE"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_25
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_2d
    return-object v0
.end method

.method public static getRuntimeSharedValue(Ljava/lang/String;)J
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_9
    invoke-static {p0}, Landroid/miui/Shell;->nativeGetRuntimeSharedValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    move-object v0, p0

    sget-boolean v1, Landroid/miui/Shell;->SUPPORT_MULTI_USERS_EXTERNAL_STORAGE:Z

    if-eqz v1, :cond_2a

    if-eqz p0, :cond_2a

    sget-object v1, Landroid/miui/Shell;->EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/miui/Shell;->EMULATED_EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/miui/Shell;->EXTERNAL_STORAGE_PATH_WITH_ENDING_SLASH:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2a
    return-object v0
.end method

.method public static link(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/miui/Shell;->nativeLink(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static mkdirs(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/miui/Shell;->nativeMkdirs(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/miui/Shell;->nativeMove(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native nativeBoostCpuPulse()Z
.end method

.method private static native nativeChmod(Ljava/lang/String;II)Z
.end method

.method private static native nativeChown(Ljava/lang/String;III)Z
.end method

.method private static native nativeCopy(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeGetRuntimeSharedValue(Ljava/lang/String;)J
.end method

.method private static native nativeLink(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeMkdirs(Ljava/lang/String;)Z
.end method

.method private static native nativeMove(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeReadByteArray(Ljava/lang/String;)[B
.end method

.method private static native nativeRemove(Ljava/lang/String;)Z
.end method

.method private static native nativeRun(Ljava/lang/String;)Z
.end method

.method private static native nativeRunShell(Ljava/lang/String;)Z
.end method

.method private static native nativeSetProperty(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeSetRuntimeSharedValue(Ljava/lang/String;J)Z
.end method

.method private static native nativeSetfilecon(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeWrite(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeWriteByteArray(Ljava/lang/String;Z[B)Z
.end method

.method public static final readByteArray(Ljava/lang/String;)[B
    .registers 2

    invoke-static {p0}, Landroid/miui/Shell;->nativeReadByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static remove(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/miui/Shell;->nativeRemove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs run(Ljava/lang/String;[Ljava/lang/Object;)Z
    .registers 4

    array-length v0, p1

    if-lez v0, :cond_8

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    invoke-static {v0}, Landroid/miui/Shell;->nativeRun(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static varargs runShell(Ljava/lang/String;[Ljava/lang/Object;)Z
    .registers 4

    array-length v0, p1

    if-lez v0, :cond_8

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    invoke-static {v0}, Landroid/miui/Shell;->nativeRunShell(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static final setProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1}, Landroid/miui/Shell;->nativeSetProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setRuntimeSharedValue(Ljava/lang/String;J)Z
    .registers 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-static {p0, p1, p2}, Landroid/miui/Shell;->nativeSetRuntimeSharedValue(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static final setfilecon(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-static {p0}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/miui/Shell;->nativeSetfilecon(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Landroid/miui/Shell;->getSystemVisibleExternalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/miui/Shell;->nativeWrite(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final writeByteArray(Ljava/lang/String;Z[B)Z
    .registers 4

    invoke-static {p0, p1, p2}, Landroid/miui/Shell;->nativeWriteByteArray(Ljava/lang/String;Z[B)Z

    move-result v0

    return v0
.end method
