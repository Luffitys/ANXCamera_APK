.class public final enum Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;
.super Ljava/lang/Enum;
.source "VEEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VIDEO_RATIO"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

.field public static final enum VIDEO_OUT_RATIO_16_9:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

.field public static final enum VIDEO_OUT_RATIO_1_1:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

.field public static final enum VIDEO_OUT_RATIO_3_4:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

.field public static final enum VIDEO_OUT_RATIO_4_3:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

.field public static final enum VIDEO_OUT_RATIO_9_16:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

.field public static final enum VIDEO_OUT_RATIO_ORIGINAL:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    const/4 v1, 0x0

    const-string v2, "VIDEO_OUT_RATIO_1_1"

    invoke-direct {v0, v2, v1}, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_1_1:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    const/4 v2, 0x1

    const-string v3, "VIDEO_OUT_RATIO_4_3"

    invoke-direct {v0, v3, v2}, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_4_3:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    const/4 v3, 0x2

    const-string v4, "VIDEO_OUT_RATIO_3_4"

    invoke-direct {v0, v4, v3}, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_3_4:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    const/4 v4, 0x3

    const-string v5, "VIDEO_OUT_RATIO_16_9"

    invoke-direct {v0, v5, v4}, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_16_9:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    const/4 v5, 0x4

    const-string v6, "VIDEO_OUT_RATIO_9_16"

    invoke-direct {v0, v6, v5}, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_9_16:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    const/4 v6, 0x5

    const-string v7, "VIDEO_OUT_RATIO_ORIGINAL"

    invoke-direct {v0, v7, v6}, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_ORIGINAL:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    sget-object v7, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_1_1:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    aput-object v7, v0, v1

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_4_3:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_3_4:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_16_9:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_9_16:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->VIDEO_OUT_RATIO_ORIGINAL:Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;
    .locals 1

    const-class v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;
    .locals 1

    sget-object v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEEditor$VIDEO_RATIO;

    return-object v0
.end method
