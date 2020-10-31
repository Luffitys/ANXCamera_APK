.class public final Landroid/app/prediction/AppTargetEvent;
.super Ljava/lang/Object;
.source "AppTargetEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/prediction/AppTargetEvent$Builder;,
        Landroid/app/prediction/AppTargetEvent$ActionType;
    }
.end annotation


# static fields
.field public static final ACTION_DISMISS:I = 0x2

.field public static final ACTION_LAUNCH:I = 0x1

.field public static final ACTION_PIN:I = 0x3

.field public static final ACTION_UNPIN:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/prediction/AppTargetEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAction:I

.field private final mLocation:Ljava/lang/String;

.field private final mTarget:Landroid/app/prediction/AppTarget;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/prediction/AppTargetEvent$1;

    invoke-direct {v0}, Landroid/app/prediction/AppTargetEvent$1;-><init>()V

    sput-object v0, Landroid/app/prediction/AppTargetEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/app/prediction/AppTarget;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/prediction/AppTargetEvent;->mTarget:Landroid/app/prediction/AppTarget;

    iput-object p2, p0, Landroid/app/prediction/AppTargetEvent;->mLocation:Ljava/lang/String;

    iput p3, p0, Landroid/app/prediction/AppTargetEvent;->mAction:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/prediction/AppTarget;Ljava/lang/String;ILandroid/app/prediction/AppTargetEvent$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/app/prediction/AppTargetEvent;-><init>(Landroid/app/prediction/AppTarget;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/prediction/AppTarget;

    iput-object v0, p0, Landroid/app/prediction/AppTargetEvent;->mTarget:Landroid/app/prediction/AppTarget;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTargetEvent;->mLocation:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/prediction/AppTargetEvent;->mAction:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/prediction/AppTargetEvent$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/prediction/AppTargetEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    :cond_14
    move-object v0, p1

    check-cast v0, Landroid/app/prediction/AppTargetEvent;

    iget-object v2, p0, Landroid/app/prediction/AppTargetEvent;->mTarget:Landroid/app/prediction/AppTarget;

    iget-object v3, v0, Landroid/app/prediction/AppTargetEvent;->mTarget:Landroid/app/prediction/AppTarget;

    invoke-virtual {v2, v3}, Landroid/app/prediction/AppTarget;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Landroid/app/prediction/AppTargetEvent;->mLocation:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/prediction/AppTargetEvent;->mLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget v2, p0, Landroid/app/prediction/AppTargetEvent;->mAction:I

    iget v3, v0, Landroid/app/prediction/AppTargetEvent;->mAction:I

    if-ne v2, v3, :cond_33

    const/4 v1, 0x1

    goto :goto_34

    :cond_33
    nop

    :goto_34
    return v1
.end method

.method public getAction()I
    .registers 2

    iget v0, p0, Landroid/app/prediction/AppTargetEvent;->mAction:I

    return v0
.end method

.method public getLaunchLocation()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/prediction/AppTargetEvent;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Landroid/app/prediction/AppTarget;
    .registers 2

    iget-object v0, p0, Landroid/app/prediction/AppTargetEvent;->mTarget:Landroid/app/prediction/AppTarget;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/app/prediction/AppTargetEvent;->mTarget:Landroid/app/prediction/AppTarget;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/prediction/AppTargetEvent;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/prediction/AppTargetEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
