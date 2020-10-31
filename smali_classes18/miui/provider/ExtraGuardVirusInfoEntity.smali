.class public Lmiui/provider/ExtraGuardVirusInfoEntity;
.super Ljava/lang/Object;
.source "ExtraGuardVirusInfoEntity.java"


# instance fields
.field private mAdvice:I

.field private mDescription:Ljava/lang/String;

.field private mEngineName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mType:I

.field private mVirusName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mType:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mDescription:Ljava/lang/String;

    iput v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mAdvice:I

    iput-object v1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mVirusName:Ljava/lang/String;

    iput-object v1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mPackageName:Ljava/lang/String;

    iput-object v1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mEngineName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdvice()I
    .registers 2

    iget v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mAdvice:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getEngineName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mEngineName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mType:I

    return v0
.end method

.method public getVirusName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mVirusName:Ljava/lang/String;

    return-object v0
.end method

.method public setAdvice(I)V
    .registers 2

    iput p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mAdvice:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setEngineName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mEngineName:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mType:I

    return-void
.end method

.method public setVirusName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lmiui/provider/ExtraGuardVirusInfoEntity;->mVirusName:Ljava/lang/String;

    return-void
.end method
