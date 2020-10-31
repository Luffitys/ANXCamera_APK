.class public Landroid/text/style/EasyEditSpan;
.super Ljava/lang/Object;
.source "EasyEditSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final EXTRA_TEXT_CHANGED_TYPE:Ljava/lang/String; = "android.text.style.EXTRA_TEXT_CHANGED_TYPE"

.field public static final TEXT_DELETED:I = 0x1

.field public static final TEXT_MODIFIED:I = 0x2


# instance fields
.field private mDeleteEnabled:Z

.field private final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/style/EasyEditSpan;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/style/EasyEditSpan;->mDeleteEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/style/EasyEditSpan;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/style/EasyEditSpan;->mDeleteEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/text/style/EasyEditSpan;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    iput-boolean v1, p0, Landroid/text/style/EasyEditSpan;->mDeleteEnabled:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Landroid/text/style/EasyEditSpan;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getSpanTypeId()I
    .registers 2

    invoke-virtual {p0}, Landroid/text/style/EasyEditSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .registers 2

    const/16 v0, 0x16

    return v0
.end method

.method public isDeleteEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/text/style/EasyEditSpan;->mDeleteEnabled:Z

    return v0
.end method

.method public setDeleteEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/text/style/EasyEditSpan;->mDeleteEnabled:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/text/style/EasyEditSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/text/style/EasyEditSpan;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/text/style/EasyEditSpan;->mDeleteEnabled:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
