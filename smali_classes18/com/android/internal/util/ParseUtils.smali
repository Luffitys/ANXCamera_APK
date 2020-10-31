.class public final Lcom/android/internal/util/ParseUtils;
.super Ljava/lang/Object;
.source "ParseUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseBoolean(Ljava/lang/String;Z)Z
    .registers 5

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    return v2

    :cond_14
    invoke-static {p0, p1}, Lcom/android/internal/util/ParseUtils;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    return v1
.end method

.method public static parseDouble(Ljava/lang/String;D)D
    .registers 5

    if-nez p0, :cond_3

    return-wide p1

    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide v0

    :catch_8
    move-exception v0

    return-wide p1
.end method

.method public static parseFloat(Ljava/lang/String;F)F
    .registers 3

    if-nez p0, :cond_3

    return p1

    :cond_3
    :try_start_3
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return v0

    :catch_8
    move-exception v0

    return p1
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .registers 3

    const/16 v0, 0xa

    invoke-static {p0, v0, p1}, Lcom/android/internal/util/ParseUtils;->parseIntWithBase(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static parseIntWithBase(Ljava/lang/String;II)I
    .registers 4

    if-nez p0, :cond_3

    return p2

    :cond_3
    :try_start_3
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return v0

    :catch_8
    move-exception v0

    return p2
.end method

.method public static parseLong(Ljava/lang/String;J)J
    .registers 5

    const/16 v0, 0xa

    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/util/ParseUtils;->parseLongWithBase(Ljava/lang/String;IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLongWithBase(Ljava/lang/String;IJ)J
    .registers 6

    if-nez p0, :cond_3

    return-wide p2

    :cond_3
    :try_start_3
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_7} :catch_8

    return-wide v0

    :catch_8
    move-exception v0

    return-wide p2
.end method
