.class public final synthetic Lcom/android/internal/widget/-$$Lambda$DKD2sNhLnyRFoBkFvfwKyxoEx10;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/widget/-$$Lambda$DKD2sNhLnyRFoBkFvfwKyxoEx10;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/widget/-$$Lambda$DKD2sNhLnyRFoBkFvfwKyxoEx10;

    invoke-direct {v0}, Lcom/android/internal/widget/-$$Lambda$DKD2sNhLnyRFoBkFvfwKyxoEx10;-><init>()V

    sput-object v0, Lcom/android/internal/widget/-$$Lambda$DKD2sNhLnyRFoBkFvfwKyxoEx10;->INSTANCE:Lcom/android/internal/widget/-$$Lambda$DKD2sNhLnyRFoBkFvfwKyxoEx10;

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

    check-cast p1, Lcom/android/internal/widget/MessagingMessage;

    invoke-interface {p1}, Lcom/android/internal/widget/MessagingMessage;->removeMessage()V

    return-void
.end method
