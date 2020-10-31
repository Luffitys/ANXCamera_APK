.class public Lcom/miui/internal/component/module/ModuleFolder;
.super Ljava/lang/Object;
.source "ModuleFolder.java"


# instance fields
.field private apkFolder:Ljava/io/File;

.field private optFolder:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/component/module/ModuleFolder;->apkFolder:Ljava/io/File;

    iput-object p2, p0, Lcom/miui/internal/component/module/ModuleFolder;->optFolder:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getApkFolder()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/component/module/ModuleFolder;->apkFolder:Ljava/io/File;

    return-object v0
.end method

.method public getOptFolder()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/component/module/ModuleFolder;->optFolder:Ljava/io/File;

    return-object v0
.end method

.method public setApkFolder(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/component/module/ModuleFolder;->apkFolder:Ljava/io/File;

    return-void
.end method

.method public setOptFolder(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/component/module/ModuleFolder;->optFolder:Ljava/io/File;

    return-void
.end method
