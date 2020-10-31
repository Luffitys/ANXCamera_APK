.class public Landroid/content/pm/parsing/component/ParsedActivity;
.super Landroid/content/pm/parsing/component/ParsedMainComponent;
.source "ParsedActivity.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field colorMode:I

.field configChanges:I

.field documentLaunchMode:I

.field launchMode:I

.field lockTaskLaunchMode:I

.field private maxAspectRatio:Ljava/lang/Float;

.field maxRecents:I

.field private minAspectRatio:Ljava/lang/Float;

.field private parentActivityName:Ljava/lang/String;

.field private permission:Ljava/lang/String;

.field persistableMode:I

.field privateFlags:I

.field requestedVrComponent:Ljava/lang/String;

.field resizeMode:I

.field rotationAnimation:I

.field screenOrientation:I

.field softInputMode:I

.field private supportsSizeChanges:Z

.field private targetActivity:Ljava/lang/String;

.field taskAffinity:Ljava/lang/String;

.field theme:I

.field uiOptions:I

.field windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/parsing/component/ParsedActivity$1;

    invoke-direct {v0}, Landroid/content/pm/parsing/component/ParsedActivity$1;-><init>()V

    sput-object v0, Landroid/content/pm/parsing/component/ParsedActivity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/content/pm/parsing/component/ParsedMainComponent;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->screenOrientation:I

    const/4 v1, 0x2

    iput v1, p0, Landroid/content/pm/parsing/component/ParsedActivity;->resizeMode:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->rotationAnimation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/parsing/component/ParsedActivity;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/content/pm/parsing/component/ParsedMainComponent;-><init>(Landroid/content/pm/parsing/component/ParsedMainComponent;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->screenOrientation:I

    const/4 v1, 0x2

    iput v1, p0, Landroid/content/pm/parsing/component/ParsedActivity;->resizeMode:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->rotationAnimation:I

    iget v0, p1, Landroid/content/pm/parsing/component/ParsedActivity;->theme:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->theme:I

    iget v0, p1, Landroid/content/pm/parsing/component/ParsedActivity;->uiOptions:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->uiOptions:I

    iget-object v0, p1, Landroid/content/pm/parsing/component/ParsedActivity;->targetActivity:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->targetActivity:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/parsing/component/ParsedActivity;->parentActivityName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->parentActivityName:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/parsing/component/ParsedActivity;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->taskAffinity:Ljava/lang/String;

    iget v0, p1, Landroid/content/pm/parsing/component/ParsedActivity;->privateFlags:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->privateFlags:I

    iget-object v0, p1, Landroid/content/pm/parsing/component/ParsedActivity;->permission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->permission:Ljava/lang/String;

    iget v0, p1, Landroid/content/pm/parsing/component/ParsedActivity;->launchMode:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->launchMode:I

    iget v0, p1, Landroid/content/pm/parsing/component/ParsedActivity;->documentLaunchMode:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->documentLaunchMode:I

    iget v0, p1, Landroid/content/pm/parsing/component/ParsedActivity;->maxRecents:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->maxRecents:I

    iget v0, p1, Landroid/content/pm/parsing/component/ParsedActivity;->configChanges:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->configChanges:I

    iget v0, p1, Landroid/content/pm/parsing/component/ParsedActivity;->softInputMode:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->softInputMode:I

    iget v0, p1, Landroid/content/pm/parsing/component/ParsedActivity;->persistableMode:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->persistableMode:I

    iget v0, p1, Landroid/content/pm/parsing/component/ParsedActivity;->lockTaskLaunchMode:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->lockTaskLaunchMode:I

    iget v0, p1, Landroid/content/pm/parsing/component/ParsedActivity;->screenOrientation:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->screenOrientation:I

    iget v0, p1, Landroid/content/pm/parsing/component/ParsedActivity;->resizeMode:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->resizeMode:I

    iget-object v0, p1, Landroid/content/pm/parsing/component/ParsedActivity;->maxAspectRatio:Ljava/lang/Float;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->maxAspectRatio:Ljava/lang/Float;

    iget-object v0, p1, Landroid/content/pm/parsing/component/ParsedActivity;->minAspectRatio:Ljava/lang/Float;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->minAspectRatio:Ljava/lang/Float;

    iget-boolean v0, p1, Landroid/content/pm/parsing/component/ParsedActivity;->supportsSizeChanges:Z

    iput-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->supportsSizeChanges:Z

    iget-object v0, p1, Landroid/content/pm/parsing/component/ParsedActivity;->requestedVrComponent:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->requestedVrComponent:Ljava/lang/String;

    iget v0, p1, Landroid/content/pm/parsing/component/ParsedActivity;->rotationAnimation:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->rotationAnimation:I

    iget v0, p1, Landroid/content/pm/parsing/component/ParsedActivity;->colorMode:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->colorMode:I

    iget-object v0, p1, Landroid/content/pm/parsing/component/ParsedActivity;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/content/pm/parsing/component/ParsedMainComponent;-><init>(Landroid/os/Parcel;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->screenOrientation:I

    const/4 v1, 0x2

    iput v1, p0, Landroid/content/pm/parsing/component/ParsedActivity;->resizeMode:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->rotationAnimation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->theme:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->uiOptions:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->targetActivity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->parentActivityName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->privateFlags:I

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->permission:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->launchMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->documentLaunchMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->maxRecents:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->configChanges:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->softInputMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->persistableMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->lockTaskLaunchMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->screenOrientation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->resizeMode:I

    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->maxAspectRatio:Ljava/lang/Float;

    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->minAspectRatio:Ljava/lang/Float;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->supportsSizeChanges:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->requestedVrComponent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->rotationAnimation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->colorMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_b4

    new-instance v0, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-direct {v0, p1}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    :cond_b4
    return-void
.end method

.method static makeAlias(Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedActivity;)Landroid/content/pm/parsing/component/ParsedActivity;
    .registers 4

    new-instance v0, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-direct {v0}, Landroid/content/pm/parsing/component/ParsedActivity;-><init>()V

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/parsing/component/ParsedActivity;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/pm/parsing/component/ParsedActivity;->setTargetActivity(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedActivity;

    iget v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->configChanges:I

    iput v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->configChanges:I

    iget v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->flags:I

    iput v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->flags:I

    iget v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->privateFlags:I

    iput v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->privateFlags:I

    iget v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->icon:I

    iput v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->icon:I

    iget v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->logo:I

    iput v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->logo:I

    iget v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->banner:I

    iput v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->banner:I

    iget v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->labelRes:I

    iput v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->labelRes:I

    iget-object v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->launchMode:I

    iput v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->launchMode:I

    iget v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->lockTaskLaunchMode:I

    iput v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->lockTaskLaunchMode:I

    iget v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->descriptionRes:I

    iput v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->descriptionRes:I

    iget v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->screenOrientation:I

    iput v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->screenOrientation:I

    iget-object v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->taskAffinity:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->taskAffinity:Ljava/lang/String;

    iget v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->theme:I

    iput v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->theme:I

    iget v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->softInputMode:I

    iput v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->softInputMode:I

    iget v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->uiOptions:I

    iput v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->uiOptions:I

    iget-object v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->parentActivityName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->parentActivityName:Ljava/lang/String;

    iget v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->maxRecents:I

    iput v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->maxRecents:I

    iget-object v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iput-object v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->resizeMode:I

    iput v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->resizeMode:I

    iget-object v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->maxAspectRatio:Ljava/lang/Float;

    iput-object v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->maxAspectRatio:Ljava/lang/Float;

    iget-object v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->minAspectRatio:Ljava/lang/Float;

    iput-object v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->minAspectRatio:Ljava/lang/Float;

    iget-boolean v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->supportsSizeChanges:Z

    iput-boolean v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->supportsSizeChanges:Z

    iget-object v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->requestedVrComponent:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->requestedVrComponent:Ljava/lang/String;

    iget-boolean v1, p1, Landroid/content/pm/parsing/component/ParsedActivity;->directBootAware:Z

    iput-boolean v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->directBootAware:Z

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedActivity;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/parsing/component/ParsedActivity;->setProcessName(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedMainComponent;

    return-object v0
.end method

.method public static makeAppDetailsActivity(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Landroid/content/pm/parsing/component/ParsedActivity;
    .registers 9

    new-instance v0, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-direct {v0}, Landroid/content/pm/parsing/component/ParsedActivity;-><init>()V

    invoke-virtual {v0, p0}, Landroid/content/pm/parsing/component/ParsedActivity;->setPackageName(Ljava/lang/String;)V

    const v1, 0x1030055

    iput v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->theme:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->exported:Z

    sget-object v2, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/pm/parsing/component/ParsedActivity;->setName(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedComponent;

    invoke-virtual {v0, p1}, Landroid/content/pm/parsing/component/ParsedActivity;->setProcessName(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedMainComponent;

    iput p2, v0, Landroid/content/pm/parsing/component/ParsedActivity;->uiOptions:I

    iput-object p3, v0, Landroid/content/pm/parsing/component/ParsedActivity;->taskAffinity:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v0, Landroid/content/pm/parsing/component/ParsedActivity;->launchMode:I

    iput v2, v0, Landroid/content/pm/parsing/component/ParsedActivity;->documentLaunchMode:I

    invoke-static {}, Landroid/app/ActivityTaskManager;->getDefaultAppRecentsLimitStatic()I

    move-result v3

    iput v3, v0, Landroid/content/pm/parsing/component/ParsedActivity;->maxRecents:I

    invoke-static {v2, v2}, Landroid/content/pm/PackageParser;->getActivityConfigChanges(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/parsing/component/ParsedActivity;->configChanges:I

    iput v2, v0, Landroid/content/pm/parsing/component/ParsedActivity;->softInputMode:I

    iput v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->persistableMode:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->screenOrientation:I

    const/4 v3, 0x4

    iput v3, v0, Landroid/content/pm/parsing/component/ParsedActivity;->resizeMode:I

    iput v2, v0, Landroid/content/pm/parsing/component/ParsedActivity;->lockTaskLaunchMode:I

    invoke-virtual {v0, v2}, Landroid/content/pm/parsing/component/ParsedActivity;->setDirectBootAware(Z)Landroid/content/pm/parsing/component/ParsedMainComponent;

    iput v1, v0, Landroid/content/pm/parsing/component/ParsedActivity;->rotationAnimation:I

    iput v2, v0, Landroid/content/pm/parsing/component/ParsedActivity;->colorMode:I

    if-eqz p4, :cond_4b

    invoke-virtual {v0}, Landroid/content/pm/parsing/component/ParsedActivity;->getFlags()I

    move-result v1

    or-int/lit16 v1, v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/pm/parsing/component/ParsedActivity;->setFlags(I)Landroid/content/pm/parsing/component/ParsedActivity;

    :cond_4b
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getColorMode()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->colorMode:I

    return v0
.end method

.method public getConfigChanges()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->configChanges:I

    return v0
.end method

.method public getDocumentLaunchMode()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->documentLaunchMode:I

    return v0
.end method

.method public getLaunchMode()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->launchMode:I

    return v0
.end method

.method public getLockTaskLaunchMode()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->lockTaskLaunchMode:I

    return v0
.end method

.method public getMaxAspectRatio()Ljava/lang/Float;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->maxAspectRatio:Ljava/lang/Float;

    return-object v0
.end method

.method public getMaxRecents()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->maxRecents:I

    return v0
.end method

.method public getMinAspectRatio()Ljava/lang/Float;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->minAspectRatio:Ljava/lang/Float;

    return-object v0
.end method

.method public getParentActivityName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->parentActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermission()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->permission:Ljava/lang/String;

    return-object v0
.end method

.method public getPersistableMode()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->persistableMode:I

    return v0
.end method

.method public getPrivateFlags()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->privateFlags:I

    return v0
.end method

.method public getRequestedVrComponent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->requestedVrComponent:Ljava/lang/String;

    return-object v0
.end method

.method public getResizeMode()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->resizeMode:I

    return v0
.end method

.method public getRotationAnimation()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->rotationAnimation:I

    return v0
.end method

.method public getScreenOrientation()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->screenOrientation:I

    return v0
.end method

.method public getSoftInputMode()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->softInputMode:I

    return v0
.end method

.method public getSupportsSizeChanges()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->supportsSizeChanges:Z

    return v0
.end method

.method public getTargetActivity()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->targetActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskAffinity()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->taskAffinity:Ljava/lang/String;

    return-object v0
.end method

.method public getTheme()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->theme:I

    return v0
.end method

.method public getUiOptions()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->uiOptions:I

    return v0
.end method

.method public getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    return-object v0
.end method

.method public setFlags(I)Landroid/content/pm/parsing/component/ParsedActivity;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/component/ParsedActivity;->flags:I

    return-object p0
.end method

.method public setMaxAspectRatio(IF)Landroid/content/pm/parsing/component/ParsedActivity;
    .registers 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    goto :goto_1a

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_13

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_13

    return-object p0

    :cond_13
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->maxAspectRatio:Ljava/lang/Float;

    return-object p0

    :cond_1a
    :goto_1a
    return-object p0
.end method

.method public setMinAspectRatio(IF)Landroid/content/pm/parsing/component/ParsedActivity;
    .registers 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    goto :goto_1a

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_13

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_13

    return-object p0

    :cond_13
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->minAspectRatio:Ljava/lang/Float;

    return-object p0

    :cond_1a
    :goto_1a
    return-object p0
.end method

.method public setParentActivity(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedActivity;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->parentActivityName:Ljava/lang/String;

    return-object p0
.end method

.method public setPermission(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedActivity;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public setResizeMode(I)Landroid/content/pm/parsing/component/ParsedActivity;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/component/ParsedActivity;->resizeMode:I

    return-object p0
.end method

.method public setSupportsSizeChanges(Z)Landroid/content/pm/parsing/component/ParsedActivity;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/component/ParsedActivity;->supportsSizeChanges:Z

    return-object p0
.end method

.method public setTargetActivity(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedActivity;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->targetActivity:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Activity{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/content/pm/parsing/component/ParsedMainComponent;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->uiOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->targetActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->parentActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->privateFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Landroid/content/pm/parsing/component/ParsedActivity;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->launchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->documentLaunchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->maxRecents:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->configChanges:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->softInputMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->persistableMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->lockTaskLaunchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->resizeMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->maxAspectRatio:Ljava/lang/Float;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->minAspectRatio:Ljava/lang/Float;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->supportsSizeChanges:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->requestedVrComponent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->rotationAnimation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->colorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_86

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedActivity;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo$WindowLayout;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_8a

    :cond_86
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_8a
    return-void
.end method
