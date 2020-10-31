.class public Landroid/content/pm/PackageParserCacheHelper$WriteHelper;
.super Landroid/os/Parcel$ReadWriteHelper;
.source "PackageParserCacheHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParserCacheHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriteHelper"
.end annotation


# instance fields
.field private final mIndexes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mParcel:Landroid/os/Parcel;

.field private final mStartPos:I

.field private final mStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/Parcel$ReadWriteHelper;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mStrings:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mIndexes:Ljava/util/HashMap;

    iput-object p1, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mStartPos:I

    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->setReadWriteHelper(Landroid/os/Parcel$ReadWriteHelper;)V

    return-void
.end method


# virtual methods
.method public finishAndUninstall()V
    .registers 4

    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setReadWriteHelper(Landroid/os/Parcel$ReadWriteHelper;)V

    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    iget-object v1, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    iget-object v2, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v1, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    iget v2, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mStartPos:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    iget-object v1, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public writeString(Landroid/os/Parcel;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mIndexes:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    :cond_12
    iget-object v1, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mIndexes:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->mStrings:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_29
    return-void
.end method

.method public writeString16(Landroid/os/Parcel;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    return-void
.end method

.method public writeString8(Landroid/os/Parcel;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->writeString(Landroid/os/Parcel;Ljava/lang/String;)V

    return-void
.end method
