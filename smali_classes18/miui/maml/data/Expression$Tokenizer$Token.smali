.class public Lmiui/maml/data/Expression$Tokenizer$Token;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression$Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field public info:Lmiui/maml/data/Expression$OpeInfo;

.field public op:Lmiui/maml/data/Expression$Ope;

.field public token:Ljava/lang/String;

.field public type:Lmiui/maml/data/Expression$Tokenizer$TokenType;


# direct methods
.method public constructor <init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    iput-object v0, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    sget-object v0, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    iput-object v0, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    iput-object p1, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    iput-object p2, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;Lmiui/maml/data/Expression$Ope;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    iput-object v0, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    sget-object v0, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    iput-object v0, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    iput-object p1, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    iput-object p2, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    iput-object p3, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {p3}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v0

    invoke-static {v0}, Lmiui/maml/data/Expression$OpeInfo;->getOpeInfo(I)Lmiui/maml/data/Expression$OpeInfo;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    return-void
.end method
