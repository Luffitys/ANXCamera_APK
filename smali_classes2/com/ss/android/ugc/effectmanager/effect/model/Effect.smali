.class public Lcom/ss/android/ugc/effectmanager/effect/model/Effect;
.super Ljava/lang/Object;
.source "Effect.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private app_version:Ljava/lang/String;

.field private childEffects:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private designer_id:Ljava/lang/String;

.field private device_platform:Ljava/lang/String;

.field private downloaded:Z

.field private effect_id:Ljava/lang/String;

.field private effect_type:I

.field private extra:Ljava/lang/String;

.field private file_url:Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;

.field private hint:Ljava/lang/String;

.field private hint_icon:Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;

.field private icon_url:Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;

.field private id:Ljava/lang/String;

.field private is_busi:Z

.field private is_poi:Z

.field private music:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private parent:Ljava/lang/String;

.field private poi_id:Ljava/lang/String;

.field private requirements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private schema:Ljava/lang/String;

.field private sdk_version:Ljava/lang/String;

.field private source:I

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tags_updated_at:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unzipPath:Ljava/lang/String;

.field private zipPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect$1;

    invoke-direct {v0}, Lcom/ss/android/ugc/effectmanager/effect/model/Effect$1;-><init>()V

    sput-object v0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->hint:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->sdk_version:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->app_version:Ljava/lang/String;

    const-class v0, Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->file_url:Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;

    const-class v0, Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->icon_url:Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->effect_id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->type:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->types:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->device_platform:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->zipPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->unzipPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->downloaded:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->tags:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->tags_updated_at:Ljava/lang/String;

    const-class v0, Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->hint_icon:Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->children:Ljava/util/List;

    sget-object v0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->childEffects:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->effect_type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->parent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->source:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->designer_id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->schema:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->requirements:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->music:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->extra:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->is_busi:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->poi_id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->is_poi:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->effect_id:Ljava/lang/String;

    check-cast p1, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    iget-object p1, p1, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->effect_id:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->app_version:Ljava/lang/String;

    return-object p0
.end method

.method public getChildEffects()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->childEffects:Ljava/util/List;

    return-object p0
.end method

.method public getChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->children:Ljava/util/List;

    return-object p0
.end method

.method public getDesignerId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->designer_id:Ljava/lang/String;

    return-object p0
.end method

.method public getDevicePlatform()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->device_platform:Ljava/lang/String;

    return-object p0
.end method

.method public getEffectId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->effect_id:Ljava/lang/String;

    return-object p0
.end method

.method public getEffectType()I
    .locals 0

    iget p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->effect_type:I

    return p0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->extra:Ljava/lang/String;

    return-object p0
.end method

.method public getFileUrl()Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->file_url:Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;

    return-object p0
.end method

.method public getHint()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->hint:Ljava/lang/String;

    return-object p0
.end method

.method public getHintIcon()Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->hint_icon:Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;

    return-object p0
.end method

.method public getIconUrl()Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->icon_url:Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getMusic()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->music:Ljava/util/List;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->parent:Ljava/lang/String;

    return-object p0
.end method

.method public getPoiId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->poi_id:Ljava/lang/String;

    return-object p0
.end method

.method public getRequirements()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->requirements:Ljava/util/List;

    return-object p0
.end method

.method public getSchema()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->schema:Ljava/lang/String;

    return-object p0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->sdk_version:Ljava/lang/String;

    return-object p0
.end method

.method public getSource()I
    .locals 0

    iget p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->source:I

    return p0
.end method

.method public getTags()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->tags:Ljava/util/List;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p0
.end method

.method public getTagsUpdatedAt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->tags_updated_at:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->type:Ljava/lang/String;

    return-object p0
.end method

.method public getTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->types:Ljava/util/List;

    return-object p0
.end method

.method public getUnzipPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->unzipPath:Ljava/lang/String;

    return-object p0
.end method

.method public getZipPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->zipPath:Ljava/lang/String;

    return-object p0
.end method

.method public isBusiness()Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->is_busi:Z

    return p0
.end method

.method public isDownloaded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->downloaded:Z

    return p0
.end method

.method public isIsPoi()Z
    .locals 0

    iget-boolean p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->is_poi:Z

    return p0
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->app_version:Ljava/lang/String;

    return-void
.end method

.method public setChildEffects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->childEffects:Ljava/util/List;

    return-void
.end method

.method public setChildren(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->children:Ljava/util/List;

    return-void
.end method

.method public setDesignerId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->designer_id:Ljava/lang/String;

    return-void
.end method

.method public setDevicePlatform(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->device_platform:Ljava/lang/String;

    return-void
.end method

.method public setDownloaded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->downloaded:Z

    return-void
.end method

.method public setEffectId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->effect_id:Ljava/lang/String;

    return-void
.end method

.method public setEffectType(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->effect_type:I

    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->extra:Ljava/lang/String;

    return-void
.end method

.method public setFileUrl(Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->file_url:Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;

    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->hint:Ljava/lang/String;

    return-void
.end method

.method public setHintIcon(Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->hint_icon:Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;

    return-void
.end method

.method public setIconUrl(Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->icon_url:Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->id:Ljava/lang/String;

    return-void
.end method

.method public setIsBusiness(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->is_busi:Z

    return-void
.end method

.method public setIsPoi(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->is_poi:Z

    return-void
.end method

.method public setMusic(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->music:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->name:Ljava/lang/String;

    return-void
.end method

.method public setParentId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->parent:Ljava/lang/String;

    return-void
.end method

.method public setPoiId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->poi_id:Ljava/lang/String;

    return-void
.end method

.method public setRequirements(Ljava/util/List;)Lcom/ss/android/ugc/effectmanager/effect/model/Effect;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;"
        }
    .end annotation

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->requirements:Ljava/util/List;

    return-object p0
.end method

.method public setSchema(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->schema:Ljava/lang/String;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->sdk_version:Ljava/lang/String;

    return-void
.end method

.method public setSource(I)V
    .locals 0

    iput p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->source:I

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->tags:Ljava/util/List;

    return-void
.end method

.method public setTagsUpdatedAt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->tags_updated_at:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->type:Ljava/lang/String;

    return-void
.end method

.method public setTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->types:Ljava/util/List;

    return-void
.end method

.method public setUnzipPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->unzipPath:Ljava/lang/String;

    return-void
.end method

.method public setZipPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->zipPath:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Effect{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", effect_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->effect_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", unzipPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->unzipPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", children="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->children:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", effectType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->effect_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", parentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->parent:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->hint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->sdk_version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->app_version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->file_url:Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->icon_url:Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->effect_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->types:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->device_platform:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->zipPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->unzipPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->downloaded:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->tags:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->tags_updated_at:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->hint_icon:Lcom/ss/android/ugc/effectmanager/common/model/UrlModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->children:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->childEffects:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget p2, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->effect_type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->parent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->source:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->designer_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->schema:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->requirements:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->music:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->extra:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->is_busi:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->poi_id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->is_poi:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
