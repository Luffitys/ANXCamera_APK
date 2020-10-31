.class public final synthetic Landroid/telecom/-$$Lambda$qa4s1Fm2YuohEunaJUJcmJXDXG0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/telecom/Logging/SessionManager$ISessionIdQueryHandler;


# static fields
.field public static final synthetic INSTANCE:Landroid/telecom/-$$Lambda$qa4s1Fm2YuohEunaJUJcmJXDXG0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telecom/-$$Lambda$qa4s1Fm2YuohEunaJUJcmJXDXG0;

    invoke-direct {v0}, Landroid/telecom/-$$Lambda$qa4s1Fm2YuohEunaJUJcmJXDXG0;-><init>()V

    sput-object v0, Landroid/telecom/-$$Lambda$qa4s1Fm2YuohEunaJUJcmJXDXG0;->INSTANCE:Landroid/telecom/-$$Lambda$qa4s1Fm2YuohEunaJUJcmJXDXG0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSessionId()Ljava/lang/String;
    .registers 2

    invoke-static {}, Landroid/telecom/Log;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
