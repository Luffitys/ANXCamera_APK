.class public final Landroid/service/contentcapture/ActivityEvent;
.super Ljava/lang/Object;
.source "ActivityEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/contentcapture/ActivityEvent$ActivityEventType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/contentcapture/ActivityEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_ACTIVITY_DESTROYED:I = 0x18

.field public static final TYPE_ACTIVITY_PAUSED:I = 0x2

.field public static final TYPE_ACTIVITY_RESUMED:I = 0x1

.field public static final TYPE_ACTIVITY_STOPPED:I = 0x17


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/service/contentcapture/ActivityEvent$1;

    invoke-direct {v0}, Landroid/service/contentcapture/ActivityEvent$1;-><init>()V

    sput-object v0, Landroid/service/contentcapture/ActivityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/contentcapture/ActivityEvent;->mComponentName:Landroid/content/ComponentName;

    iput p2, p0, Landroid/service/contentcapture/ActivityEvent;->mType:I

    return-void
.end method

.method public static getTypeAsString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_29

    const/4 v0, 0x2

    if-eq p0, v0, :cond_26

    const/16 v0, 0x17

    if-eq p0, v0, :cond_23

    const/16 v0, 0x18

    if-eq p0, v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UKNOWN_TYPE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    const-string v0, "ACTIVITY_DESTROYED"

    return-object v0

    :cond_23
    const-string v0, "ACTIVITY_STOPPED"

    return-object v0

    :cond_26
    const-string v0, "ACTIVITY_PAUSED"

    return-object v0

    :cond_29
    const-string v0, "ACTIVITY_RESUMED"

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Landroid/service/contentcapture/ActivityEvent;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getEventType()I
    .registers 2

    iget v0, p0, Landroid/service/contentcapture/ActivityEvent;->mType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActivityEvent["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/contentcapture/ActivityEvent;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/service/contentcapture/ActivityEvent;->mType:I

    invoke-static {v1}, Landroid/service/contentcapture/ActivityEvent;->getTypeAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/service/contentcapture/ActivityEvent;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/service/contentcapture/ActivityEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
