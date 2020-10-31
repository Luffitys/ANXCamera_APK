.class public Landroid/content/pm/parsing/component/ParsedMainComponent;
.super Landroid/content/pm/parsing/component/ParsedComponent;
.source "ParsedMainComponent.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/parsing/component/ParsedMainComponent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field directBootAware:Z

.field enabled:Z

.field exported:Z

.field order:I

.field private processName:Ljava/lang/String;

.field splitName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/parsing/component/ParsedMainComponent$1;

    invoke-direct {v0}, Landroid/content/pm/parsing/component/ParsedMainComponent$1;-><init>()V

    sput-object v0, Landroid/content/pm/parsing/component/ParsedMainComponent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/pm/parsing/component/ParsedComponent;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->enabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/parsing/component/ParsedMainComponent;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/parsing/component/ParsedComponent;-><init>(Landroid/content/pm/parsing/component/ParsedComponent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->enabled:Z

    iget-object v0, p1, Landroid/content/pm/parsing/component/ParsedMainComponent;->processName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->processName:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/content/pm/parsing/component/ParsedMainComponent;->directBootAware:Z

    iput-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->directBootAware:Z

    iget-boolean v0, p1, Landroid/content/pm/parsing/component/ParsedMainComponent;->enabled:Z

    iput-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->enabled:Z

    iget-boolean v0, p1, Landroid/content/pm/parsing/component/ParsedMainComponent;->exported:Z

    iput-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->exported:Z

    iget v0, p1, Landroid/content/pm/parsing/component/ParsedMainComponent;->order:I

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->order:I

    iget-object v0, p1, Landroid/content/pm/parsing/component/ParsedMainComponent;->splitName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->splitName:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/parsing/component/ParsedComponent;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->enabled:Z

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->directBootAware:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->enabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->exported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->order:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->splitName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedMainComponent;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrder()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->order:I

    return v0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getSplitName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->splitName:Ljava/lang/String;

    return-object v0
.end method

.method public isDirectBootAware()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->directBootAware:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->enabled:Z

    return v0
.end method

.method public isExported()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->exported:Z

    return v0
.end method

.method public setDirectBootAware(Z)Landroid/content/pm/parsing/component/ParsedMainComponent;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->directBootAware:Z

    return-object p0
.end method

.method public setEnabled(Z)Landroid/content/pm/parsing/component/ParsedMainComponent;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->enabled:Z

    return-object p0
.end method

.method public setExported(Z)Landroid/content/pm/parsing/component/ParsedMainComponent;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->exported:Z

    return-object p0
.end method

.method public setProcessName(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedMainComponent;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public setSplitName(Ljava/lang/String;)Landroid/content/pm/parsing/component/ParsedMainComponent;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->splitName:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/content/pm/parsing/component/ParsedComponent;->writeToParcel(Landroid/os/Parcel;I)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->directBootAware:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->enabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->exported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->order:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/parsing/component/ParsedMainComponent;->splitName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
