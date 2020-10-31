.class public final Landroid/app/DirectAction;
.super Ljava/lang/Object;
.source "DirectAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/DirectAction$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/DirectAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_ACTIONS_LIST:Ljava/lang/String; = "actions_list"


# instance fields
.field private mActivityId:Landroid/os/IBinder;

.field private final mExtras:Landroid/os/Bundle;

.field private final mID:Ljava/lang/String;

.field private final mLocusId:Landroid/content/LocusId;

.field private mTaskId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/DirectAction$1;

    invoke-direct {v0}, Landroid/app/DirectAction$1;-><init>()V

    sput-object v0, Landroid/app/DirectAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/app/DirectAction;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/app/DirectAction;->mTaskId:I

    iput v0, p0, Landroid/app/DirectAction;->mTaskId:I

    iget-object v0, p1, Landroid/app/DirectAction;->mActivityId:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/app/DirectAction;->mActivityId:Landroid/os/IBinder;

    iget-object v0, p1, Landroid/app/DirectAction;->mID:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/DirectAction;->mID:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/DirectAction;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/DirectAction;->mExtras:Landroid/os/Bundle;

    iget-object v0, p1, Landroid/app/DirectAction;->mLocusId:Landroid/content/LocusId;

    iput-object v0, p0, Landroid/app/DirectAction;->mLocusId:Landroid/content/LocusId;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/DirectAction;->mTaskId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DirectAction;->mActivityId:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DirectAction;->mID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DirectAction;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    new-instance v1, Landroid/content/LocusId;

    invoke-direct {v1, v0}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    iput-object v1, p0, Landroid/app/DirectAction;->mLocusId:Landroid/content/LocusId;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/DirectAction$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/DirectAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/LocusId;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/DirectAction;->mID:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/DirectAction;->mExtras:Landroid/os/Bundle;

    iput-object p3, p0, Landroid/app/DirectAction;->mLocusId:Landroid/content/LocusId;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    if-ne p1, p0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v0

    :cond_13
    iget-object v0, p0, Landroid/app/DirectAction;->mID:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/app/DirectAction;

    iget-object v1, v1, Landroid/app/DirectAction;->mID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getActivityId()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/app/DirectAction;->mActivityId:Landroid/os/IBinder;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/app/DirectAction;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/DirectAction;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public getLocusId()Landroid/content/LocusId;
    .registers 2

    iget-object v0, p0, Landroid/app/DirectAction;->mLocusId:Landroid/content/LocusId;

    return-object v0
.end method

.method public getTaskId()I
    .registers 2

    iget v0, p0, Landroid/app/DirectAction;->mTaskId:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroid/app/DirectAction;->mID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setSource(ILandroid/os/IBinder;)V
    .registers 3

    iput p1, p0, Landroid/app/DirectAction;->mTaskId:I

    iput-object p2, p0, Landroid/app/DirectAction;->mActivityId:Landroid/os/IBinder;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/app/DirectAction;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/DirectAction;->mActivityId:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/app/DirectAction;->mID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/DirectAction;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/app/DirectAction;->mLocusId:Landroid/content/LocusId;

    invoke-virtual {v0}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
