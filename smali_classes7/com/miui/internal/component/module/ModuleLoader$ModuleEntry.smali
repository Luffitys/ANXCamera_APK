.class Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public apkPath:Ljava/lang/String;

.field public libFolderPath:Ljava/lang/String;

.field public module:Lmiui/module/Module;

.field public optFolderPath:Ljava/lang/String;

.field public optional:Z


# direct methods
.method public constructor <init>(Lmiui/module/Module;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->module:Lmiui/module/Module;

    iput-object p2, p0, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->apkPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->libFolderPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->optFolderPath:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/miui/internal/component/module/ModuleLoader$ModuleEntry;->optional:Z

    return-void
.end method
