.class public final Landroid/accessibilityservice/AccessibilityGestureEvent;
.super Ljava/lang/Object;
.source "AccessibilityGestureEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityGestureEvent$GestureId;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/accessibilityservice/AccessibilityGestureEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDisplayId:I

.field private final mGestureId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/accessibilityservice/AccessibilityGestureEvent$1;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityGestureEvent$1;-><init>()V

    sput-object v0, Landroid/accessibilityservice/AccessibilityGestureEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    iput p2, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/accessibilityservice/AccessibilityGestureEvent$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static eventTypeToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_86

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string v0, "GESTURE_4_FINGER_DOUBLE_TAP_AND_HOLD"

    return-object v0

    :pswitch_b
    const-string v0, "GESTURE_3_FINGER_DOUBLE_TAP_AND_HOLD"

    return-object v0

    :pswitch_e
    const-string v0, "GESTURE_2_FINGER_DOUBLE_TAP_AND_HOLD"

    return-object v0

    :pswitch_11
    const-string v0, "GESTURE_4_FINGER_TRIPLE_TAP"

    return-object v0

    :pswitch_14
    const-string v0, "GESTURE_4_FINGER_DOUBLE_TAP"

    return-object v0

    :pswitch_17
    const-string v0, "GESTURE_4_FINGER_SINGLE_TAP"

    return-object v0

    :pswitch_1a
    const-string v0, "GESTURE_4_FINGER_SWIPE_RIGHT"

    return-object v0

    :pswitch_1d
    const-string v0, "GESTURE_4_FINGER_SWIPE_LEFT"

    return-object v0

    :pswitch_20
    const-string v0, "GESTURE_4_FINGER_SWIPE_DOWN"

    return-object v0

    :pswitch_23
    const-string v0, "GESTURE_4_FINGER_SWIPE_UP"

    return-object v0

    :pswitch_26
    const-string v0, "GESTURE_3_FINGER_SWIPE_RIGHT"

    return-object v0

    :pswitch_29
    const-string v0, "GESTURE_3_FINGER_SWIPE_LEFT"

    return-object v0

    :pswitch_2c
    const-string v0, "GESTURE_3_FINGER_SWIPE_DOWN"

    return-object v0

    :pswitch_2f
    const-string v0, "GESTURE_3_FINGER_SWIPE_UP"

    return-object v0

    :pswitch_32
    const-string v0, "GESTURE_2_FINGER_SWIPE_RIGHT"

    return-object v0

    :pswitch_35
    const-string v0, "GESTURE_2_FINGER_SWIPE_LEFT"

    return-object v0

    :pswitch_38
    const-string v0, "GESTURE_2_FINGER_SWIPE_DOWN"

    return-object v0

    :pswitch_3b
    const-string v0, "GESTURE_2_FINGER_SWIPE_UP"

    return-object v0

    :pswitch_3e
    const-string v0, "GESTURE_3_FINGER_TRIPLE_TAP"

    return-object v0

    :pswitch_41
    const-string v0, "GESTURE_3_FINGER_DOUBLE_TAP"

    return-object v0

    :pswitch_44
    const-string v0, "GESTURE_3_FINGER_SINGLE_TAP"

    return-object v0

    :pswitch_47
    const-string v0, "GESTURE_2_FINGER_TRIPLE_TAP"

    return-object v0

    :pswitch_4a
    const-string v0, "GESTURE_2_FINGER_DOUBLE_TAP"

    return-object v0

    :pswitch_4d
    const-string v0, "GESTURE_2_FINGER_SINGLE_TAP"

    return-object v0

    :pswitch_50
    const-string v0, "GESTURE_DOUBLE_TAP_AND_HOLD"

    return-object v0

    :pswitch_53
    const-string v0, "GESTURE_DOUBLE_TAP"

    return-object v0

    :pswitch_56
    const-string v0, "GESTURE_SWIPE_DOWN_AND_RIGHT"

    return-object v0

    :pswitch_59
    const-string v0, "GESTURE_SWIPE_DOWN_AND_LEFT"

    return-object v0

    :pswitch_5c
    const-string v0, "GESTURE_SWIPE_UP_AND_RIGHT"

    return-object v0

    :pswitch_5f
    const-string v0, "GESTURE_SWIPE_UP_AND_LEFT"

    return-object v0

    :pswitch_62
    const-string v0, "GESTURE_SWIPE_RIGHT_AND_DOWN"

    return-object v0

    :pswitch_65
    const-string v0, "GESTURE_SWIPE_RIGHT_AND_UP"

    return-object v0

    :pswitch_68
    const-string v0, "GESTURE_SWIPE_LEFT_AND_DOWN"

    return-object v0

    :pswitch_6b
    const-string v0, "GESTURE_SWIPE_LEFT_AND_UP"

    return-object v0

    :pswitch_6e
    const-string v0, "GESTURE_SWIPE_DOWN_AND_UP"

    return-object v0

    :pswitch_71
    const-string v0, "GESTURE_SWIPE_UP_AND_DOWN"

    return-object v0

    :pswitch_74
    const-string v0, "GESTURE_SWIPE_RIGHT_AND_LEFT"

    return-object v0

    :pswitch_77
    const-string v0, "GESTURE_SWIPE_LEFT_AND_RIGHT"

    return-object v0

    :pswitch_7a
    const-string v0, "GESTURE_SWIPE_RIGHT"

    return-object v0

    :pswitch_7d
    const-string v0, "GESTURE_SWIPE_LEFT"

    return-object v0

    :pswitch_80
    const-string v0, "GESTURE_SWIPE_DOWN"

    return-object v0

    :pswitch_83
    const-string v0, "GESTURE_SWIPE_UP"

    return-object v0

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayId()I
    .registers 2

    iget v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    return v0
.end method

.method public getGestureId()I
    .registers 2

    iget v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccessibilityGestureEvent["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "gestureId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    invoke-static {v1}, Landroid/accessibilityservice/AccessibilityGestureEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "displayId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mGestureId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/accessibilityservice/AccessibilityGestureEvent;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
