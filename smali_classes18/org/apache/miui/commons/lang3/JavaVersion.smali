.class public final enum Lorg/apache/miui/commons/lang3/JavaVersion;
.super Ljava/lang/Enum;
.source "JavaVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/miui/commons/lang3/JavaVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_0_9:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_1:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_2:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_3:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_4:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_5:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_6:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_7:Lorg/apache/miui/commons/lang3/JavaVersion;

.field public static final enum JAVA_1_8:Lorg/apache/miui/commons/lang3/JavaVersion;


# instance fields
.field private name:Ljava/lang/String;

.field private value:F


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string v1, "JAVA_0_9"

    const/4 v2, 0x0

    const/high16 v3, 0x3fc00000    # 1.5f

    const-string v4, "0.9"

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_0_9:Lorg/apache/miui/commons/lang3/JavaVersion;

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_1"

    const/4 v4, 0x1

    const v5, 0x3f8ccccd    # 1.1f

    const-string v6, "1.1"

    invoke-direct {v0, v1, v4, v5, v6}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_1:Lorg/apache/miui/commons/lang3/JavaVersion;

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_2"

    const/4 v5, 0x2

    const v6, 0x3f99999a    # 1.2f

    const-string v7, "1.2"

    invoke-direct {v0, v1, v5, v6, v7}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_2:Lorg/apache/miui/commons/lang3/JavaVersion;

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_3"

    const/4 v6, 0x3

    const v7, 0x3fa66666    # 1.3f

    const-string v8, "1.3"

    invoke-direct {v0, v1, v6, v7, v8}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_3:Lorg/apache/miui/commons/lang3/JavaVersion;

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_4"

    const/4 v7, 0x4

    const v8, 0x3fb33333    # 1.4f

    const-string v9, "1.4"

    invoke-direct {v0, v1, v7, v8, v9}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_4:Lorg/apache/miui/commons/lang3/JavaVersion;

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_5"

    const/4 v8, 0x5

    const-string v9, "1.5"

    invoke-direct {v0, v1, v8, v3, v9}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_5:Lorg/apache/miui/commons/lang3/JavaVersion;

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_6"

    const/4 v3, 0x6

    const v9, 0x3fcccccd    # 1.6f

    const-string v10, "1.6"

    invoke-direct {v0, v1, v3, v9, v10}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_6:Lorg/apache/miui/commons/lang3/JavaVersion;

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_7"

    const/4 v9, 0x7

    const v10, 0x3fd9999a    # 1.7f

    const-string v11, "1.7"

    invoke-direct {v0, v1, v9, v10, v11}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_7:Lorg/apache/miui/commons/lang3/JavaVersion;

    new-instance v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    const-string v1, "JAVA_1_8"

    const/16 v10, 0x8

    const v11, 0x3fe66666    # 1.8f

    const-string v12, "1.8"

    invoke-direct {v0, v1, v10, v11, v12}, Lorg/apache/miui/commons/lang3/JavaVersion;-><init>(Ljava/lang/String;IFLjava/lang/String;)V

    sput-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_8:Lorg/apache/miui/commons/lang3/JavaVersion;

    const/16 v1, 0x9

    new-array v1, v1, [Lorg/apache/miui/commons/lang3/JavaVersion;

    sget-object v11, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_0_9:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v11, v1, v2

    sget-object v2, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_1:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_2:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_3:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_4:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_5:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v2, v1, v8

    sget-object v2, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_6:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_7:Lorg/apache/miui/commons/lang3/JavaVersion;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    sput-object v1, Lorg/apache/miui/commons/lang3/JavaVersion;->$VALUES:[Lorg/apache/miui/commons/lang3/JavaVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/miui/commons/lang3/JavaVersion;->value:F

    iput-object p4, p0, Lorg/apache/miui/commons/lang3/JavaVersion;->name:Ljava/lang/String;

    return-void
.end method

.method static get(Ljava/lang/String;)Lorg/apache/miui/commons/lang3/JavaVersion;
    .registers 2

    const-string v0, "0.9"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_0_9:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_b
    const-string v0, "1.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_1:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_16
    const-string v0, "1.2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_2:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_21
    const-string v0, "1.3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_3:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_2c
    const-string v0, "1.4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_4:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_37
    const-string v0, "1.5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_5:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_42
    const-string v0, "1.6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_6:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_4d
    const-string v0, "1.7"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_7:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_58
    const-string v0, "1.8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->JAVA_1_8:Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0

    :cond_63
    const/4 v0, 0x0

    return-object v0
.end method

.method static getJavaVersion(Ljava/lang/String;)Lorg/apache/miui/commons/lang3/JavaVersion;
    .registers 2

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/JavaVersion;->get(Ljava/lang/String;)Lorg/apache/miui/commons/lang3/JavaVersion;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/miui/commons/lang3/JavaVersion;
    .registers 2

    const-class v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0
.end method

.method public static values()[Lorg/apache/miui/commons/lang3/JavaVersion;
    .registers 1

    sget-object v0, Lorg/apache/miui/commons/lang3/JavaVersion;->$VALUES:[Lorg/apache/miui/commons/lang3/JavaVersion;

    invoke-virtual {v0}, [Lorg/apache/miui/commons/lang3/JavaVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/miui/commons/lang3/JavaVersion;

    return-object v0
.end method


# virtual methods
.method public atLeast(Lorg/apache/miui/commons/lang3/JavaVersion;)Z
    .registers 4

    iget v0, p0, Lorg/apache/miui/commons/lang3/JavaVersion;->value:F

    iget v1, p1, Lorg/apache/miui/commons/lang3/JavaVersion;->value:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/miui/commons/lang3/JavaVersion;->name:Ljava/lang/String;

    return-object v0
.end method
