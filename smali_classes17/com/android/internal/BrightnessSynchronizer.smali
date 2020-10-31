.class public Lcom/android/internal/BrightnessSynchronizer;
.super Ljava/lang/Object;
.source "BrightnessSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/BrightnessSynchronizer$BrightnessSyncObserver;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_FLOAT_URI:Landroid/net/Uri;

.field private static final BRIGHTNESS_URI:Landroid/net/Uri;

.field public static final EPSILON:F = 1.0E-6f

.field private static final MSG_UPDATE_FLOAT:I = 0x1

.field private static final MSG_UPDATE_INT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BrightnessSynchronizer"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mPreferredSettingValue:F

.field private final mWriteHistory:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    nop

    const-string/jumbo v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/BrightnessSynchronizer;->BRIGHTNESS_URI:Landroid/net/Uri;

    nop

    const-string/jumbo v0, "screen_brightness_float"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/BrightnessSynchronizer;->BRIGHTNESS_FLOAT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/BrightnessSynchronizer;->mWriteHistory:Ljava/util/Queue;

    new-instance v0, Lcom/android/internal/BrightnessSynchronizer$1;

    invoke-direct {v0, p0}, Lcom/android/internal/BrightnessSynchronizer$1;-><init>(Lcom/android/internal/BrightnessSynchronizer;)V

    iput-object v0, p0, Lcom/android/internal/BrightnessSynchronizer;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/internal/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/internal/BrightnessSynchronizer$BrightnessSyncObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/BrightnessSynchronizer$BrightnessSyncObserver;-><init>(Lcom/android/internal/BrightnessSynchronizer;Landroid/os/Handler;)V

    move-object v0, v1

    invoke-virtual {v0}, Lcom/android/internal/BrightnessSynchronizer$BrightnessSyncObserver;->startObserving()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/BrightnessSynchronizer;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/BrightnessSynchronizer;->updateBrightnessFloatFromInt(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/BrightnessSynchronizer;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/BrightnessSynchronizer;->updateBrightnessIntFromFloat(F)V

    return-void
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/internal/BrightnessSynchronizer;->BRIGHTNESS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/BrightnessSynchronizer;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/android/internal/BrightnessSynchronizer;->getScreenBrightnessInt(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/BrightnessSynchronizer;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/BrightnessSynchronizer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/internal/BrightnessSynchronizer;->BRIGHTNESS_FLOAT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/Context;)F
    .registers 2

    invoke-static {p0}, Lcom/android/internal/BrightnessSynchronizer;->getScreenBrightnessFloat(Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public static brightnessFloatToInt(Landroid/content/Context;F)I
    .registers 3

    invoke-static {p0, p1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToIntRange(Landroid/content/Context;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static brightnessFloatToIntRange(FFFFF)F
    .registers 7

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0, v0}, Lcom/android/internal/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_11

    return v0

    :cond_11
    invoke-static {p3, p4, p1, p2, p0}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v0

    return v0
.end method

.method public static brightnessFloatToIntRange(Landroid/content/Context;F)F
    .registers 9

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v2

    sget v3, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v1, v4, v5, v5, v3}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToIntRange(FFFFF)F

    move-result v3

    sget v6, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v6, v6

    invoke-static {v2, v4, v5, v5, v6}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToIntRange(FFFFF)F

    move-result v4

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToIntRange(FFFFF)F

    move-result v5

    return v5
.end method

.method public static brightnessIntToFloat(IIIFF)F
    .registers 8

    if-nez p0, :cond_5

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    :cond_5
    const/4 v0, -0x1

    if-ne p0, v0, :cond_b

    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    :cond_b
    int-to-float v0, p1

    int-to-float v1, p2

    int-to-float v2, p0

    invoke-static {p3, p4, v0, v1, v2}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result v0

    return v0
.end method

.method public static brightnessIntToFloat(Landroid/content/Context;I)F
    .registers 9

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v2

    sget v3, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v1, v4, v5, v5, v3}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToIntRange(FFFFF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sget v6, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v6, v6

    invoke-static {v2, v4, v5, v5, v6}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToIntRange(FFFFF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {p1, v3, v4, v1, v2}, Lcom/android/internal/BrightnessSynchronizer;->brightnessIntToFloat(IIIFF)F

    move-result v5

    return v5
.end method

.method public static floatEquals(FF)Z
    .registers 5

    cmpl-float v0, p0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x358637bd    # 1.0E-6f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_21

    return v1

    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method private static getScreenBrightnessFloat(Landroid/content/Context;)F
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_float"

    const/high16 v2, 0x7fc00000    # Float.NaN

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    return v0
.end method

.method private static getScreenBrightnessInt(Landroid/content/Context;)I
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private updateBrightnessFloatFromInt(I)V
    .registers 7

    iget-object v0, p0, Lcom/android/internal/BrightnessSynchronizer;->mWriteHistory:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/internal/BrightnessSynchronizer;->mWriteHistory:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_41

    :cond_18
    iget-object v1, p0, Lcom/android/internal/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/internal/BrightnessSynchronizer;->mPreferredSettingValue:F

    invoke-static {v1, v2}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v1

    if-ne v1, p1, :cond_23

    return-void

    :cond_23
    iget-object v1, p0, Lcom/android/internal/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessIntToFloat(Landroid/content/Context;I)F

    move-result v1

    iget-object v2, p0, Lcom/android/internal/BrightnessSynchronizer;->mWriteHistory:Ljava/util/Queue;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iput v1, p0, Lcom/android/internal/BrightnessSynchronizer;->mPreferredSettingValue:F

    iget-object v2, p0, Lcom/android/internal/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    const-string/jumbo v4, "screen_brightness_float"

    invoke-static {v2, v4, v1, v3}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    :goto_41
    return-void
.end method

.method private updateBrightnessIntFromFloat(F)V
    .registers 7

    iget-object v0, p0, Lcom/android/internal/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/BrightnessSynchronizer;->mWriteHistory:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/android/internal/BrightnessSynchronizer;->mWriteHistory:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_36

    :cond_1e
    iget-object v2, p0, Lcom/android/internal/BrightnessSynchronizer;->mWriteHistory:Ljava/util/Queue;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iput p1, p0, Lcom/android/internal/BrightnessSynchronizer;->mPreferredSettingValue:F

    iget-object v2, p0, Lcom/android/internal/BrightnessSynchronizer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    const-string/jumbo v4, "screen_brightness"

    invoke-static {v2, v4, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_36
    return-void
.end method
