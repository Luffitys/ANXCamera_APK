.class public Landroid/app/ApplicationInjector;
.super Ljava/lang/Object;
.source "ApplicationInjector.java"


# static fields
.field private static mMiuiApplicationThread:Lmiui/process/IMiuiApplicationThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Landroid/app/ApplicationInjector;->mMiuiApplicationThread:Lmiui/process/IMiuiApplicationThread;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onCreate(Landroid/app/Application;)V
    .registers 1

    invoke-static {}, Lmiui/contentcatcher/InterceptorProxy;->addMiuiApplication()V

    return-void
.end method
