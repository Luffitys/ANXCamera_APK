.class Lcom/android/internal/os/BaseCommand$1;
.super Landroid/os/BasicShellCommandHandler;
.source "BaseCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BaseCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BaseCommand;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BaseCommand;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/os/BaseCommand$1;->this$0:Lcom/android/internal/os/BaseCommand;

    invoke-direct {p0}, Landroid/os/BasicShellCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onHelp()V
    .registers 1

    return-void
.end method
