.class public final synthetic Landroid/hardware/radio/-$$Lambda$ProgramList$GfCj9jJ5znxw2TV4c2uykq35dgI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/hardware/radio/-$$Lambda$ProgramList$GfCj9jJ5znxw2TV4c2uykq35dgI;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/radio/-$$Lambda$ProgramList$GfCj9jJ5znxw2TV4c2uykq35dgI;

    invoke-direct {v0}, Landroid/hardware/radio/-$$Lambda$ProgramList$GfCj9jJ5znxw2TV4c2uykq35dgI;-><init>()V

    sput-object v0, Landroid/hardware/radio/-$$Lambda$ProgramList$GfCj9jJ5znxw2TV4c2uykq35dgI;->INSTANCE:Landroid/hardware/radio/-$$Lambda$ProgramList$GfCj9jJ5znxw2TV4c2uykq35dgI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/hardware/radio/ProgramList$OnCompleteListener;

    invoke-static {p1}, Landroid/hardware/radio/ProgramList;->lambda$apply$4(Landroid/hardware/radio/ProgramList$OnCompleteListener;)V

    return-void
.end method
