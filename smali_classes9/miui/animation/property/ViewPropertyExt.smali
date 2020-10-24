.class public Lmiui/animation/property/ViewPropertyExt;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BACKGROUND:Lmiui/animation/property/ViewPropertyExt$BackgroundProperty;

.field public static final FOREGROUND:Lmiui/animation/property/ViewPropertyExt$ForegroundProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmiui/animation/property/ViewPropertyExt$ForegroundProperty;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/animation/property/ViewPropertyExt$ForegroundProperty;-><init>(Lmiui/animation/property/ViewPropertyExt$1;)V

    sput-object v0, Lmiui/animation/property/ViewPropertyExt;->FOREGROUND:Lmiui/animation/property/ViewPropertyExt$ForegroundProperty;

    new-instance v0, Lmiui/animation/property/ViewPropertyExt$BackgroundProperty;

    invoke-direct {v0, v1}, Lmiui/animation/property/ViewPropertyExt$BackgroundProperty;-><init>(Lmiui/animation/property/ViewPropertyExt$1;)V

    sput-object v0, Lmiui/animation/property/ViewPropertyExt;->BACKGROUND:Lmiui/animation/property/ViewPropertyExt$BackgroundProperty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
