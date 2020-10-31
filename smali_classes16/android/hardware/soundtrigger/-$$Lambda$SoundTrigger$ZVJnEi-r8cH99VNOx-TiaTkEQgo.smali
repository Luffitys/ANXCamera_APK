.class public final synthetic Landroid/hardware/soundtrigger/-$$Lambda$SoundTrigger$ZVJnEi-r8cH99VNOx-TiaTkEQgo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final synthetic INSTANCE:Landroid/hardware/soundtrigger/-$$Lambda$SoundTrigger$ZVJnEi-r8cH99VNOx-TiaTkEQgo;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/soundtrigger/-$$Lambda$SoundTrigger$ZVJnEi-r8cH99VNOx-TiaTkEQgo;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/-$$Lambda$SoundTrigger$ZVJnEi-r8cH99VNOx-TiaTkEQgo;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/-$$Lambda$SoundTrigger$ZVJnEi-r8cH99VNOx-TiaTkEQgo;->INSTANCE:Landroid/hardware/soundtrigger/-$$Lambda$SoundTrigger$ZVJnEi-r8cH99VNOx-TiaTkEQgo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 1

    invoke-static {}, Landroid/hardware/soundtrigger/SoundTrigger;->lambda$getService$0()V

    return-void
.end method
