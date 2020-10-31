.class public final Landroid/app/prediction/AppPredictionContext;
.super Ljava/lang/Object;
.source "AppPredictionContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/prediction/AppPredictionContext$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/prediction/AppPredictionContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private final mPackageName:Ljava/lang/String;

.field private final mPredictedTargetCount:I

.field private final mUiSurface:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/prediction/AppPredictionContext$1;

    invoke-direct {v0}, Landroid/app/prediction/AppPredictionContext$1;-><init>()V

    sput-object v0, Landroid/app/prediction/AppPredictionContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mUiSurface:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/prediction/AppPredictionContext;->mPredictedTargetCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/prediction/AppPredictionContext$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/prediction/AppPredictionContext;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/prediction/AppPredictionContext;->mUiSurface:Ljava/lang/String;

    iput p2, p0, Landroid/app/prediction/AppPredictionContext;->mPredictedTargetCount:I

    iput-object p3, p0, Landroid/app/prediction/AppPredictionContext;->mPackageName:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/prediction/AppPredictionContext;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/app/prediction/AppPredictionContext$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/prediction/AppPredictionContext;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_18

    return v2

    :cond_18
    move-object v1, p1

    check-cast v1, Landroid/app/prediction/AppPredictionContext;

    iget v3, p0, Landroid/app/prediction/AppPredictionContext;->mPredictedTargetCount:I

    iget v4, v1, Landroid/app/prediction/AppPredictionContext;->mPredictedTargetCount:I

    if-ne v3, v4, :cond_36

    iget-object v3, p0, Landroid/app/prediction/AppPredictionContext;->mUiSurface:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/prediction/AppPredictionContext;->mUiSurface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/app/prediction/AppPredictionContext;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/prediction/AppPredictionContext;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_37

    :cond_36
    move v0, v2

    :goto_37
    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPredictedTargetCount()I
    .registers 2

    iget v0, p0, Landroid/app/prediction/AppPredictionContext;->mPredictedTargetCount:I

    return v0
.end method

.method public getUiSurface()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mUiSurface:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mUiSurface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/prediction/AppPredictionContext;->mPredictedTargetCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/prediction/AppPredictionContext;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
