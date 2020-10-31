.class public Landroid/os/VintfObject;
.super Ljava/lang/Object;
.source "VintfObject.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VintfObject"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getHalNamesAndVersions()[Ljava/lang/String;
.end method

.method public static native getSepolicyVersion()Ljava/lang/String;
.end method

.method public static native getTargetFrameworkCompatibilityMatrixVersion()Ljava/lang/Long;
.end method

.method public static native getVndkSnapshots()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public static native report()[Ljava/lang/String;
.end method

.method public static verify([Ljava/lang/String;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "VintfObject"

    if-eqz p0, :cond_e

    array-length v1, p0

    if-lez v1, :cond_e

    const-string v1, "VintfObject.verify() with non-empty packageInfo is deprecated. Skipping compatibility checks for update package."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_e
    const-string v1, "VintfObject.verify() is deprecated. Call verifyWithoutAvb() instead."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/VintfObject;->verifyWithoutAvb()I

    move-result v0

    return v0
.end method

.method public static native verifyWithoutAvb()I
.end method
