.class public final Landroid/app/contentsuggestions/SelectionsRequest;
.super Ljava/lang/Object;
.source "SelectionsRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/contentsuggestions/SelectionsRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/contentsuggestions/SelectionsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final mInterestPoint:Landroid/graphics/Point;

.field private final mTaskId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/contentsuggestions/SelectionsRequest$1;

    invoke-direct {v0}, Landroid/app/contentsuggestions/SelectionsRequest$1;-><init>()V

    sput-object v0, Landroid/app/contentsuggestions/SelectionsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILandroid/graphics/Point;Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mTaskId:I

    iput-object p2, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mInterestPoint:Landroid/graphics/Point;

    iput-object p3, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(ILandroid/graphics/Point;Landroid/os/Bundle;Landroid/app/contentsuggestions/SelectionsRequest$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/app/contentsuggestions/SelectionsRequest;-><init>(ILandroid/graphics/Point;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_9
    return-object v0
.end method

.method public getInterestPoint()Landroid/graphics/Point;
    .registers 2

    iget-object v0, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mInterestPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public getTaskId()I
    .registers 2

    iget v0, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mTaskId:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mInterestPoint:Landroid/graphics/Point;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/contentsuggestions/SelectionsRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
