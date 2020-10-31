.class public final Landroid/content/pm/InstallationFile;
.super Ljava/lang/Object;
.source "InstallationFile.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mParcel:Landroid/content/pm/InstallationFileParcel;


# direct methods
.method public constructor <init>(ILjava/lang/String;J[B[B)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/pm/InstallationFileParcel;

    invoke-direct {v0}, Landroid/content/pm/InstallationFileParcel;-><init>()V

    iput-object v0, p0, Landroid/content/pm/InstallationFile;->mParcel:Landroid/content/pm/InstallationFileParcel;

    iput p1, v0, Landroid/content/pm/InstallationFileParcel;->location:I

    iget-object v0, p0, Landroid/content/pm/InstallationFile;->mParcel:Landroid/content/pm/InstallationFileParcel;

    iput-object p2, v0, Landroid/content/pm/InstallationFileParcel;->name:Ljava/lang/String;

    iget-object v0, p0, Landroid/content/pm/InstallationFile;->mParcel:Landroid/content/pm/InstallationFileParcel;

    iput-wide p3, v0, Landroid/content/pm/InstallationFileParcel;->size:J

    iget-object v0, p0, Landroid/content/pm/InstallationFile;->mParcel:Landroid/content/pm/InstallationFileParcel;

    iput-object p5, v0, Landroid/content/pm/InstallationFileParcel;->metadata:[B

    iget-object v0, p0, Landroid/content/pm/InstallationFile;->mParcel:Landroid/content/pm/InstallationFileParcel;

    iput-object p6, v0, Landroid/content/pm/InstallationFileParcel;->signature:[B

    return-void
.end method


# virtual methods
.method public getData()Landroid/content/pm/InstallationFileParcel;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/InstallationFile;->mParcel:Landroid/content/pm/InstallationFileParcel;

    return-object v0
.end method

.method public getLengthBytes()J
    .registers 3

    iget-object v0, p0, Landroid/content/pm/InstallationFile;->mParcel:Landroid/content/pm/InstallationFileParcel;

    iget-wide v0, v0, Landroid/content/pm/InstallationFileParcel;->size:J

    return-wide v0
.end method

.method public getLocation()I
    .registers 2

    iget-object v0, p0, Landroid/content/pm/InstallationFile;->mParcel:Landroid/content/pm/InstallationFileParcel;

    iget v0, v0, Landroid/content/pm/InstallationFileParcel;->location:I

    return v0
.end method

.method public getMetadata()[B
    .registers 2

    iget-object v0, p0, Landroid/content/pm/InstallationFile;->mParcel:Landroid/content/pm/InstallationFileParcel;

    iget-object v0, v0, Landroid/content/pm/InstallationFileParcel;->metadata:[B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/InstallationFile;->mParcel:Landroid/content/pm/InstallationFileParcel;

    iget-object v0, v0, Landroid/content/pm/InstallationFileParcel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()[B
    .registers 2

    iget-object v0, p0, Landroid/content/pm/InstallationFile;->mParcel:Landroid/content/pm/InstallationFileParcel;

    iget-object v0, v0, Landroid/content/pm/InstallationFileParcel;->signature:[B

    return-object v0
.end method
