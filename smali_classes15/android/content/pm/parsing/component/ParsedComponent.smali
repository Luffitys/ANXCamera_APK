.class public abstract Landroid/content/pm/parsing/component/ParsedComponent;
.super Ljava/lang/Object;
.source "ParsedComponent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static sForIntentInfos:Landroid/content/pm/parsing/component/ParsedIntentInfo$ListParceler;


# instance fields
.field banner:I

.field private componentName:Landroid/content/ComponentName;

.field descriptionRes:I

.field flags:I

.field icon:I

.field private intents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation
.end field

.field labelRes:I

.field logo:I

.field protected metaData:Landroid/os/Bundle;

.field private name:Ljava/lang/String;

.field nonLocalizedLabel:Ljava/lang/CharSequence;

.field private packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/content/pm/parsing/component/ParsedIntentInfo$ListParceler;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Landroid/content/pm/parsing/component/ParsedIntentInfo$ListParceler;

    sput-object v0, Landroid/content/pm/parsing/component/ParsedComponent;->sForIntentInfos:Landroid/content/pm/parsing/component/ParsedIntentInfo$ListParceler;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/parsing/component/ParsedComponent;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/content/pm/parsing/component/ParsedComponent;->metaData:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->metaData:Landroid/os/Bundle;

    iget-object v0, p1, Landroid/content/pm/parsing/component/ParsedComponent;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedComponent;->getIcon()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->icon:I

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedComponent;->getLabelRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->labelRes:I

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedComponent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedComponent;->getLogo()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->logo:I

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedComponent;->getBanner()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->banner:I

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedComponent;->getDescriptionRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->descriptionRes:I

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedComponent;->getFlags()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->flags:I

    iget-object v0, p1, Landroid/content/pm/parsing/component/ParsedComponent;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/pm/parsing/component/ParsedComponent;->setPackageName(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->intents:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/component/ParsedComponent;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/parsing/component/ParsedComponent;->icon:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/parsing/component/ParsedComponent;->labelRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/component/ParsedComponent;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/parsing/component/ParsedComponent;->logo:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/parsing/component/ParsedComponent;->banner:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/parsing/component/ParsedComponent;->descriptionRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/parsing/component/ParsedComponent;->flags:I

    sget-object v1, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/component/ParsedComponent;->packageName:Ljava/lang/String;

    sget-object v1, Landroid/content/pm/parsing/component/ParsedComponent;->sForIntentInfos:Landroid/content/pm/parsing/component/ParsedIntentInfo$ListParceler;

    invoke-virtual {v1, p1}, Landroid/content/pm/parsing/component/ParsedIntentInfo$ListParceler;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/component/ParsedComponent;->intents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/component/ParsedComponent;->metaData:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public addIntent(Landroid/content/pm/parsing/component/ParsedIntentInfo;)V
    .registers 3

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->intents:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->intents:Ljava/util/List;

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBanner()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->banner:I

    return v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 4

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->componentName:Landroid/content/ComponentName;

    if-nez v0, :cond_13

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->componentName:Landroid/content/ComponentName;

    :cond_13
    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getDescriptionRes()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->descriptionRes:I

    return v0
.end method

.method public getFlags()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->flags:I

    return v0
.end method

.method public getIcon()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->icon:I

    return v0
.end method

.method public getIntents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->intents:Ljava/util/List;

    if-eqz v0, :cond_5

    goto :goto_9

    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public getLabelRes()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->labelRes:I

    return v0
.end method

.method public getLogo()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->logo:I

    return v0
.end method

.method public getMetaData()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNonLocalizedLabel()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedComponent;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->componentName:Landroid/content/ComponentName;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedComponent;->getIcon()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedComponent;->getLabelRes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedComponent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedComponent;->getLogo()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedComponent;->getBanner()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedComponent;->getDescriptionRes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedComponent;->getFlags()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Landroid/content/pm/parsing/component/ParsedComponent;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    sget-object v0, Landroid/content/pm/parsing/component/ParsedComponent;->sForIntentInfos:Landroid/content/pm/parsing/component/ParsedIntentInfo$ListParceler;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/pm/parsing/component/ParsedIntentInfo$ListParceler;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedComponent;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
