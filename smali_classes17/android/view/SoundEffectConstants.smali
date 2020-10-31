.class public Landroid/view/SoundEffectConstants;
.super Ljava/lang/Object;
.source "SoundEffectConstants.java"


# static fields
.field public static final CLICK:I = 0x0

.field public static final NAVIGATION_DOWN:I = 0x4

.field public static final NAVIGATION_LEFT:I = 0x1

.field public static final NAVIGATION_RIGHT:I = 0x3

.field public static final NAVIGATION_UP:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContantForFocusDirection(I)I
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_24

    if-eq p0, v0, :cond_22

    const/16 v2, 0x11

    if-eq p0, v2, :cond_21

    const/16 v1, 0x21

    if-eq p0, v1, :cond_24

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x82

    if-ne p0, v0, :cond_17

    goto :goto_22

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    const/4 v0, 0x3

    return v0

    :cond_21
    return v1

    :cond_22
    :goto_22
    const/4 v0, 0x4

    return v0

    :cond_24
    return v0
.end method
