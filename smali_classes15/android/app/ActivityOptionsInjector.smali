.class public Landroid/app/ActivityOptionsInjector;
.super Ljava/lang/Object;
.source "ActivityOptionsInjector.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityOptionsInjector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFreeformScale:F

.field private mMiniFreeformMode:Z

.field private mNeedAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/ActivityOptionsInjector$1;

    invoke-direct {v0}, Landroid/app/ActivityOptionsInjector$1;-><init>()V

    sput-object v0, Landroid/app/ActivityOptionsInjector;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/ActivityOptionsInjector;->mFreeformScale:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityOptionsInjector;->mMiniFreeformMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptionsInjector;->mNeedAnimation:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getFreeformAnimation()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/ActivityOptionsInjector;->mNeedAnimation:Z

    return v0
.end method

.method public getFreeformScale()F
    .registers 2

    iget v0, p0, Landroid/app/ActivityOptionsInjector;->mFreeformScale:F

    return v0
.end method

.method public getMiniFreeformMode()Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/ActivityOptionsInjector;->mMiniFreeformMode:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptionsInjector;->mFreeformScale:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptionsInjector;->mMiniFreeformMode:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptionsInjector;->mNeedAnimation:Z

    return-void
.end method

.method public setFreeformAnimation(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/ActivityOptionsInjector;->mNeedAnimation:Z

    return-void
.end method

.method public setFreeformScale(F)V
    .registers 2

    iput p1, p0, Landroid/app/ActivityOptionsInjector;->mFreeformScale:F

    return-void
.end method

.method public setMiniFreeformMode(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/ActivityOptionsInjector;->mMiniFreeformMode:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityOptionsInjector={freeformScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/ActivityOptionsInjector;->mFreeformScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", miniFreeformMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/ActivityOptionsInjector;->mMiniFreeformMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/ActivityOptionsInjector;->mNeedAnimation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/app/ActivityOptionsInjector;->mFreeformScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Landroid/app/ActivityOptionsInjector;->mMiniFreeformMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/app/ActivityOptionsInjector;->mNeedAnimation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
