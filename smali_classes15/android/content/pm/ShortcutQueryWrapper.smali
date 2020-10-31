.class public final Landroid/content/pm/ShortcutQueryWrapper;
.super Landroid/content/pm/LauncherApps$ShortcutQuery;
.source "ShortcutQueryWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ShortcutQueryWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/ShortcutQueryWrapper$1;

    invoke-direct {v0}, Landroid/content/pm/ShortcutQueryWrapper$1;-><init>()V

    sput-object v0, Landroid/content/pm/ShortcutQueryWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/LauncherApps$ShortcutQuery;)V
    .registers 4

    invoke-direct {p0}, Landroid/content/pm/ShortcutQueryWrapper;-><init>()V

    iget-wide v0, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mChangedSince:J

    iput-wide v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mChangedSince:J

    iget-object v0, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mPackage:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mLocusIds:Ljava/util/List;

    iput-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mLocusIds:Ljava/util/List;

    iget-object v0, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mShortcutIds:Ljava/util/List;

    iput-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mShortcutIds:Ljava/util/List;

    iget-object v0, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mActivity:Landroid/content/ComponentName;

    iget v0, p1, Landroid/content/pm/LauncherApps$ShortcutQuery;->mQueryFlags:I

    iput v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mQueryFlags:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 13

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    if-nez v3, :cond_12

    move-object v3, v4

    goto :goto_16

    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    :goto_16
    const/4 v5, 0x0

    and-int/lit8 v6, v0, 0x4

    if-eqz v6, :cond_24

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    :cond_24
    const/4 v6, 0x0

    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_38

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v7

    const-class v7, Landroid/content/LocusId;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    :cond_38
    and-int/lit8 v7, v0, 0x10

    if-nez v7, :cond_3e

    move-object v7, v4

    goto :goto_46

    :cond_3e
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    :goto_46
    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput-wide v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mChangedSince:J

    iput-object v3, p0, Landroid/content/pm/ShortcutQueryWrapper;->mPackage:Ljava/lang/String;

    iput-object v5, p0, Landroid/content/pm/ShortcutQueryWrapper;->mShortcutIds:Ljava/util/List;

    iput-object v6, p0, Landroid/content/pm/ShortcutQueryWrapper;->mLocusIds:Ljava/util/List;

    iput-object v7, p0, Landroid/content/pm/ShortcutQueryWrapper;->mActivity:Landroid/content/ComponentName;

    iput v8, p0, Landroid/content/pm/ShortcutQueryWrapper;->mQueryFlags:I

    const-class v9, Landroid/content/pm/LauncherApps$ShortcutQuery$QueryFlags;

    iget v10, p0, Landroid/content/pm/ShortcutQueryWrapper;->mQueryFlags:I

    invoke-static {v9, v4, v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getActivity()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getChangedSince()J
    .registers 3

    iget-wide v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mChangedSince:J

    return-wide v0
.end method

.method public getLocusIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/LocusId;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mLocusIds:Ljava/util/List;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryFlags()I
    .registers 2

    iget v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mQueryFlags:I

    return v0
.end method

.method public getShortcutIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/ShortcutQueryWrapper;->mShortcutIds:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "ShortcutQueryWrapper {  }"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    :cond_8
    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mShortcutIds:Ljava/util/List;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    :cond_f
    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mLocusIds:Ljava/util/List;

    if-eqz v1, :cond_16

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    :cond_16
    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1d

    or-int/lit8 v1, v0, 0x10

    int-to-byte v0, v1

    :cond_1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mChangedSince:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_2e
    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mShortcutIds:Ljava/util/List;

    if-eqz v1, :cond_37

    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mShortcutIds:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    :cond_37
    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mLocusIds:Ljava/util/List;

    if-eqz v1, :cond_40

    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mLocusIds:Ljava/util/List;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    :cond_40
    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_49

    iget-object v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    :cond_49
    iget v1, p0, Landroid/content/pm/ShortcutQueryWrapper;->mQueryFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
