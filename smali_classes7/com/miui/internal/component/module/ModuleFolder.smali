.class public Lcom/miui/internal/component/module/ModuleFolder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private apkFolder:Ljava/io/File;

.field private optFolder:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/component/module/ModuleFolder;->apkFolder:Ljava/io/File;

    iput-object p2, p0, Lcom/miui/internal/component/module/ModuleFolder;->optFolder:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getApkFolder()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/component/module/ModuleFolder;->apkFolder:Ljava/io/File;

    return-object p0
.end method

.method public getOptFolder()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/component/module/ModuleFolder;->optFolder:Ljava/io/File;

    return-object p0
.end method

.method public setApkFolder(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/component/module/ModuleFolder;->apkFolder:Ljava/io/File;

    return-void
.end method

.method public setOptFolder(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/component/module/ModuleFolder;->optFolder:Ljava/io/File;

    return-void
.end method
